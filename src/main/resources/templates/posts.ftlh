<#include 'lib.ftlh'>

<@wrapper title="/r/${subreddit}">
  <#assign thumbnailUrlFragment>/r/${subreddit}?after=${postAfterId!}&showThumbs=</#assign>
  <@header subreddit>
    <#if showThumbs>
      <a href='${thumbnailUrlFragment}false'>hide thumbnails</a>
    <#else>
      <a href='${thumbnailUrlFragment}true'>show thumbnails</a>
    </#if>
  </@header>

  <div class="sort-section">
    Sort posts by:
    <li><a href="/r/${subreddit}/hot">Hot</a></li>
    <li><a href="/r/${subreddit}/new">New</a></li>
    <li><a href="/r/${subreddit}/top">Top</a></li>
  </div>


  <ol class="post-list no-list-style">
    <#list posts as post>
      <li>
        <div class="post">
          <#if showThumbs && !post.isSelfPost() && post.thumbnailUrl?has_content>
            <a class="post-title" href="${post.primaryLink}">
              <img src="${post.thumbnailUrl}" class="post-thumbnail"> </img>
            </a>
          </#if>
          <@postSummary post/>
        </div>
      </li>
    </#list>
  </ol>

  <a class="next-page-link" href="/r/${subreddit}?after=${nextPostId}&showThumbs=${showThumbs?c}">next page ></a>

</@wrapper>
