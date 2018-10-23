!* commandSubst true
! source -directory [dir plugins] posts.tcl
! source -directory [dir plugins] www.tcl
<div class="row">
  <div class="col-md-12">
    <h1>Latest Articles</h1>
    <p>If you get your finances under control then perhaps you could work less and spend more time with your family.  Or do other things that you enjoy.</p>
  </div>
</div>

! set posts [posts::sort [collection get articles-posts]]
! set postListParams [dict create posts $posts maxPosts 6]
[ornament -params $postListParams -directory [dir includes] -file post_list.html]

<div class="row">
  <div class="col-md-12">
    <p id="rss-subscribe">
      Subscribe <a href="[www::url "/feed.xml"]">via Atom</a>
    </p>
  </div>
</div>
