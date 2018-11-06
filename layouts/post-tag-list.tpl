!* commandSubst true
! source -directory [dir plugins] www.tcl
! source -directory [dir plugins] include.tcl

<div class="row">
  <div class="col-md-12">
    <div class="hero">
      <h1>Articles tagged with: [getparam tag]</h1>
      <a class="pull-right btn btn-success btn-lg" href="/articles/">View All</a>
    </div>
  </div>
</div>

<div class="margin-buffer"></div>

! set postListParams [dict create posts [getparam posts] maxPosts 0]
[ornament -params $postListParams -directory [dir includes] -file post_list.html]

<div class="row">
  <div class="col-md-12">
    <p id="rss-subscribe">
      Subscribe <a href="http://feeds.feedburner.com/MoneyLantern">via Atom</a>
    </p>
    [include email_subscription.html]
  </div>
</div>

<div class="margin-buffer"></div>
