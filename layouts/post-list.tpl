!* commandSubst true
! source -directory [dir plugins] posts.tcl
! source -directory [dir plugins] www.tcl
<div class="row">
  <div class="col-md-12">
    <h1>Latest Articles</h1>
    <p>If you get your finances under control then perhaps you could work less and spend more time with your family.  Or do other things that you enjoy.</p>
  </div>
</div>

<div class="row margin-buffer">
!   set numPosts 0
!   set posts [posts::sort [collection get articles-posts]]
!   foreach post $posts {
!     dict set post postNum $numPosts
!     incr numPosts
!     if {$numPosts >= 6} {
!       break
!     }
      [ornament -params $post -directory [dir includes] -file post_box_summary.html]
!     if {$numPosts % 3 == 0} {
        </div>
        <div class="row margin-buffer">
!     }
!   }
</div>

<div class="row">
  <div class="col-md-12">
    <p id="rss-subscribe">
      Subscribe <a href="[www::url "/feed.xml"]">via Atom</a>
    </p>
  </div>
</div>
