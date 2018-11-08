source -directory [dir plugins] www.tcl
set cssDir [dir content static css]
file copy [file join $cssDir *.css] \
          [file join $cssDir *.map] \
          [www::makeDestination css]

set imagesDir [dir content static img]
file copy [file join $imagesDir *.jpg] \
          [file join $imagesDir *.png] \
          [www::makeDestination img]

set contactIconsDir [dir content static img contact_icons]
file copy [file join $contactIconsDir *.svg] \
          [www::makeDestination img contact_icons]


set socialImagesDir [dir content static img social_flat_rounded_rects_svg]
file copy [file join $socialImagesDir *.svg] \
          [www::makeDestination img social_flat_rounded_rects_svg]

set faviconsDir [dir content static favicons]
file copy [file join $faviconsDir *.ico] \
          [file join $faviconsDir *.png] \
          [file join $faviconsDir *.xml] \
          [www::makeDestination]

set fontsDir [dir content static fonts]
file copy [file join $fontsDir *.eot] \
          [file join $fontsDir *.woff] \
          [file join $fontsDir *.svg] \
          [file join $fontsDir *.woff2] \
          [file join $fontsDir *.ttf] \
          [www::makeDestination fonts]

set jsDir [dir content static js]
file copy [file join $jsDir *.js] [www::makeDestination js]

set staticDir [dir content static]
file copy [file join $staticDir CNAME] \
          [file join $staticDir .nojekyll] \
          [www::makeDestination]
