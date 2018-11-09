!* commandSubst true variableSubst true
! source -directory [dir plugins] posts.tcl
! source -directory [dir plugins] www.tcl
! source -directory [dir plugins] include.tcl
! set title [getparam title]
! set date [getparam date]
<div class="row margin-buffer">
  <div class="col-md-12">
    <article itemscope itemtype="http://schema.org/BlogPosting">
      <header>
        <a href="[www::url [getparam url]]" title="$title">
          <h1 itemprop="headline name">$title</h1>
        </a>
        <div class="pull-right">
          [include simple_share_buttons.html]
        </div>
!       if {![getparam -default false hideDate]} {
          <time itemprop="datePublished"
                datetime="[clock format $date -format {%Y-%m-%d}]">
            [clock format $date -format {%e %B %Y}]
          </time>
          &nbsp; / &nbsp;
!       }
        <span itemscope itemprop="publisher"
              itemtype="http://schema.org/Organization">
          <meta itemprop="name" content="Money Lantern" />
          <meta itemprop="url" content="https://moneylantern.com" />
        </span>
        <span itemscope itemprop="author" itemtype="http://schema.org/Person">
          <a rel="author" itemprop="url" href="[getparam author url]">
            <span itemprop="name">[getparam author name]</span>
          </a>
        </span>
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

<div class="row">
  <div class="col-md-12">
    <div id="cclicence">
      <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">
        <img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" />
      </a>
      <br />
      <span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">$title</span>
      by <a xmlns:cc="http://creativecommons.org/ns#" href="[www::url -canonical [getparam url]]" property="cc:attributionName" rel="cc:attributionURL">[getparam author name]</a>
     is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
    </div>
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

<div class="row">
  <div class="col-md-12">
    [include email_subscription.html]
  </div>
</div>
