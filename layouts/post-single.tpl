!* commandSubst true variableSubst true
! source -directory [dir plugins] posts.tcl
! source -directory [dir plugins] www.tcl
! set title [getparam title]
! set date [getparam date]
<div class="row margin-buffer">
  <div class="col-md-12">
    <article itemscope itemtype="http://schema.org/BlogPosting">
      <header>
        <a href="[www::url [getparam url]]" title="$title">
          <h1 itemprop="name">$title</h1>
        </a>
!       if {![getparam -default false hideDate]} {
          <time datetime="[clock format $date -format {%Y-%m-%d}]">
            [clock format $date -format {%e %B %Y}]
          </time>
          &nbsp; / &nbsp;
!       }
        <a href="[getparam author url]">[getparam author name]</a>
        &nbsp; / &nbsp;
!       foreach tag [getparam tags] {
          <a href="[www::url "/articles/tag/[posts::tagToDirName $tag]/"]">$tag</a>
          &nbsp; &nbsp;
!       }
      </header>
      <br />
      <div itemprop="articleBody">
        [getparam content]
      </div>
    </article>
  </div>
</div>

! if {[llength [getparam relatedPosts]] >= 1} {
    <div class="row">
      <div class="col-md-12">
        <h2>Related Articles</h2>
      </div>
    </div>
!   set postListParams [dict create posts [getparam relatedPosts] maxPosts 6]
    [ornament -params $postListParams -directory [dir includes] -file post_list.html]
! }
