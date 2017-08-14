﻿# toastr
**toastr** is a Javascript library for Gnome / Growl type non-blocking notifications. jQuery is required. The goal is to create a simple core library that can be customized and extended.

## Current Version
2.0.1


## Demo
Demo can be found at http://CodeSeven.github.com/toastr

## Quick start

###3 Easy Steps
For other API calls, see the [demo](http://CodeSeven.github.com/toastr).

1. update gemfile: gem 'toastr-rails'

2. Add toastr to application.css `*= require toastr`
   and application.js `//= require toastr`

3. use toastr to display a toast for info, success, warning or error

        // Display an info toast with no title
        toastr.info('Are you the 6 fingered man?')

### Other Options

    // Display a warning toast, with no title
    toastr.warning('My name is Inigo Montoya. You Killed my father, prepare to die!')
    
    // Display a success toast, with a title
    toastr.success('Have fun storming the castle!', 'Miracle Max Says')
    
    // Display an error toast, with a title
    toastr.error('I do not think that word means what you tink it means.', 'Inconceivable!')


## Authors

**Hans Fjällemark**

+ [Hans Fjällemark Twitter](http://twitter.com/hfjallemark)

**John Papa**

+ [John Papa Twitter](http://twitter.com/John_Papa)

## Credits
Inspired by [NotifierJs](https://github.com/Srirangan/notifer.js/).


## Copyright

Copyright © 2013 [Hans Fjällemark](http://twitter.com/hfjallemark) & [John Papa](http://twitter.com/John_Papa).

## License 

toastr is under MIT license - http://www.opensource.org/licenses/mit-license.php
