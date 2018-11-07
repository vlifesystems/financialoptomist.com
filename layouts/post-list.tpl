!* commandSubst true
! source -directory [dir plugins] posts.tcl
! source -directory [dir plugins] www.tcl
! source -directory [dir plugins] include.tcl
<div class="row">
  <div class="col-md-12">
    <h1>Latest Articles</h1>
  </div>
</div>

! set posts [posts::sort [collection get articles-posts]]
! set postListParams [dict create posts $posts maxPosts 6]
[ornament -params $postListParams -directory [dir includes] -file post_list.html]

<div class="row">
  <div class="col-md-12">
    [include email_subscription.html]
  </div>
</div>
