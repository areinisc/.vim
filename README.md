# .vim
Whether you're me and you're wanting a familiar Vim on a new computer, or you just want to experience vim through my eyes---rest assured, you've come to the right place. This remote will enable you to soar ever higher on you very own Vim cloud.

- - -

## Want .vim? Do this:

On Linux and OS X, open a terminal and:
```
cd ~
rm -rf .vim
rm .vimrc
git clone git@github.com:areinisc/.vim.git
ln -s .vim/.vimrc .vimrc
cd .vim
git submodule init
git submodule update
```

### Releases

Though this is a work in progress, the master branch should always be stable. It should be comprised of tagged releases.





- - -

- - -

- - - 

- - -
# THIS WILL YET REMAIN FOR REMINDING US HOW FAR WE HAVE COME!

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
