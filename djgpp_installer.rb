#!/bin/ruby

# Copyright (c) 2005-2015 Ross Smith II (http://smithii.com). MIT Licensed.

input = ARGV[0]

ih = File.new(input)

oh = File.new('djgpp_installer.nsh', 'wb')

oh.print "# Copyright (c) 2005-2015 Ross Smith II (http://smithii.com). MIT Licensed.\n"

in_section = false
done = false

section_no = 0
while !done && ! ih.eof()
  while l = ih.gets()
    if l =~ /^<b>(.*)<\/b>$/i
      section = $1
      if in_section
        oh.printf("\nSectionGroupEnd\n")
      end
      oh.printf("\nSectionGroup '%s'\n\n", section)
      section_no += 1
      in_section = true
      next
    end

    if ! in_section
      next
    end

    l.strip!
    if l.length == 0
      next
    end

    if l =~ /unzip32.exe/
      next
    end

    if l =~ /<\/pre>/
      done = true
      break
    end

    if l =~ /<a\s*href="([^"]*)">(\S*)<\/a>(.*)/
      url = $1.strip
      file = $2.strip
      text = $3.strip
      size = ''
      if text =~ /^(.*\S)\s+(\d.*)$/
        text = $1.strip
        size = $2.strip
      else
        size = text
        text = file
      end
      text += ' (' + size + ')'

      base = File.basename(url)
      ext = File.extname(base)
      base = File.basename(base, ext)
#     text += ' (' + base + ')'
      if ext =~ /zip$/i
        oh.printf("!insertmacro DownloadCLI\t'%d 4' '%s' '%s' '' ''\n", section_no, text, url)
      else
        oh.printf("!insertmacro DownloadEXE\t'%d 4' '%s' '%s' '' ''\n", section_no, text, url)
      end
    else
      printf("No match: %s\n", l)
    end
  end
end

oh.printf("\nSectionGroupEnd\n")

ih.close()
oh.close()
