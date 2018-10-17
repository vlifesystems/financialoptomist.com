!* commandSubst true
! source -directory [dir plugins] www.tcl

<div class="row">
  <div class="col-md-12">
    <div class="hero">
      <h1>Articles tagged with: [getparam tag]</h1>
    </div>
  </div>
</div>

<div class="row margin-buffer">
!  set numPosts 0
!  foreach post [getparam posts] {
!    dict set post postNum $numPosts
!    incr numPosts
     [ornament -params $post -directory [dir includes] -file post_box_summary.html]
!    if {$numPosts % 3 == 0} {
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
