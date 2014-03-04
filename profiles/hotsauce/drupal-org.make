; Drush Make file
api = 2
core = 7.x

; **********************************************
; ***************** CONTRIB ********************
; Add contrib modules here.

; **************** END CONTRIB *****************
; **********************************************

; **********************************************
; ***************** KALAMAGIX ******************

; Here we add in all the kalagoods

projects[kalatheme][version] = 3.0-rc2
projects[kalatheme][type] = theme

; **********************************************
; **************** END KALAMAGIX ***************

; **********************************************
; ***************** PANOPOLY *******************

; Note that makefiles are parsed bottom-up, and that in Drush concurrency might
; interfere with recursion.
; Therefore PANOPOLY needs to be listed AT THE BOTTOM of this makefile,
; so we can patch or update certain projects fetched by Panopoly's makefiles.

; Someday maybe we can turn this on to just inherit Panopoly
;projects[panopoly][type] = profile
;projects[panopoly][version] = 7.x-1.1
; but, Drupal.org does not support recursive profiles
; and also does not support include[]
; so we need to copy the panopoly.make file here

; The Panopoly Foundation
; Grab latest core so we can get new stable CTools and Panels magic for
; Kalatheme
projects[panopoly_core][type] = module
projects[panopoly_core][subdir] = panopoly
projects[panopoly_core][download][type] = git
projects[panopoly_core][download][revision] = fe9fc21
projects[panopoly_core][download][branch] = 7.x-1.x
projects[panopoly_core][download][url] = http://git.drupal.org/project/panopoly_core.git

; Other Panopoly Magix
projects[panopoly_images][version] = 1.1
projects[panopoly_images][subdir] = panopoly
projects[panopoly_theme][version] = 1.1
projects[panopoly_theme][subdir] = panopoly
projects[panopoly_magic][version] = 1.1
projects[panopoly_magic][subdir] = panopoly
projects[panopoly_widgets][version] = 1.1
projects[panopoly_widgets][subdir] = panopoly
projects[panopoly_admin][version] = 1.1
projects[panopoly_admin][subdir] = panopoly
projects[panopoly_users][version] = 1.1
projects[panopoly_users][subdir] = panopoly

; The Panopoly Toolset
projects[panopoly_pages][version] = 1.1
projects[panopoly_pages][subdir] = panopoly
projects[panopoly_wysiwyg][version] = 1.1
projects[panopoly_wysiwyg][subdir] = panopoly
projects[panopoly_search][version] = 1.1
projects[panopoly_search][subdir] = panopoly

; **************** END PANOPOLY ****************
; **********************************************
