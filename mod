#name : module ... end
#contributor : byplayer <byplayer100@gmail.com>
#group : definitions
# --
module ${1:`(let ((fn (capitalize (file-name-nondirectory
                                 (file-name-sans-extension
				 (or (buffer-file-name)
				     (buffer-name (current-buffer))))))))
           (cond
             ((string-match "_" fn) (replace-match "" nil nil fn))
              (t fn)))`}
  $0
end