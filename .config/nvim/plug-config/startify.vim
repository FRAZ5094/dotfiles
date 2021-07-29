let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_bookmarks = [
            \ { 'g': '/media/fraser/HDD/github' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'p': '/media/fraser/HDD/github/Python-Programs/' },
            \ { 'f': '~/Documents/linux_fan_control/fan_profile.json' },
            \ { 'c': '~/github/ChineseShare/random_video/*.txt' },
            \ { 's': '~/.config/nvim/snips' },
            \ ]

let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_change_to_vcs_root = 1
