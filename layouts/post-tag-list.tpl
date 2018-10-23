!* commandSubst true
! source -directory [dir plugins] www.tcl

<div class="row">
  <div class="col-md-12">
    <div class="hero">
      <h1>Articles tagged with: [getparam tag]</h1>
    </div>
  </div>
</div>

! set postListParams [dict create posts [getparam posts] maxPosts 0]
[ornament -params $postListParams -directory [dir includes] -file post_list.html]

<div class="row">
  <div class="col-md-12">
    <p id="rss-subscribe">
      Subscribe <a href="[www::url "/feed.xml"]">via Atom</a>
    </p>
  </div>
</div>
