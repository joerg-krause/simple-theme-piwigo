{if !empty($blocks)}

<div class="container">
  <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-header">
      <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="navbar-brand" href="#"></a>
    </div>

    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        {foreach from=$blocks key=id item=block}
        <li id="{$id}" class="dropdown">
          {if not empty($block->template)}
          {include file=$block->template|@get_extent:$id }
          {else}
          {$block->raw_content}
          {/if}
        </li>
        {/foreach}
      </ul>

      {if isset($block->data.qsearch) and  $block->data.qsearch==true}
      <form action="{$ROOT_URL}qsearch.php" method="get" class="navbar-search pull-right">
        <input class="search-query" type="text" name="q" placeholder="{'Search'|@translate}">
      </form>
      {/if}
    </div>
  </div>
</div>
{/if}
