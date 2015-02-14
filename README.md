# .vim
Finally, after minutes of research, I will create the most useful version-controlled set of vim resources ever witnessed on my computer!

## Description
I'm shamelessly stealing Luke's idea for the third time (see his [blog post][des1] or his [github repo][des2]). This time I've finally bothered to learn about git before just diving in. Thanks to [this (somewhat outdated?) tutorial][des3], I think I kind of know what I'm doing---sort-of. There wasn't a section on submodules, so we'll just see how this goes, ok?

### Really though ...
This is for personal use/learning/experimenting, so just try not to laugh if you wind up here somehow.

- - - - -

## Adding \& Updating
Don't forget that you can add things by:
```
cd .vim
git submodule add [ GITprojectOFvimPLUGINurl ] bundle/[ PLUGINname ]
git submodule init
git submodule update
```

[des1]: http://www.terminally-incoherent.com/blog/2012/03/12/putting-your-vim-files-under-version-control/ "Putting your vim files under version control"
[des2]: https://github.com/maciakl/.vim "maciakl/.vim"
[des3]: https://www.atlassian.com/git/tutorials "Become a git guru"
