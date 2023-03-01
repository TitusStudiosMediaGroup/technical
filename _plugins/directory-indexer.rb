require "fileutils"

module Jekyll
    module DirectoryIndexer
        def directory_index(path)
            @site.static_files.select { |file| INCLUDED_EXTENSIONS.include? file.extname }
        end
    end
end
  
Liquid::Template.register_filter(Jekyll::DirectoryIndexer)
