{**
 * templates/frontend/pages/article.tpl
 *
 * Copyright (c) 2014-2019 Simon Fraser University
 * Copyright (c) 2003-2019 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view an article with all of it's details.
 *
 * @uses $article Article This article
 * @uses $issue Issue The issue this article is assigned to
 * @uses $section Section The journal section this article is assigned to
 * @uses $journal Journal The journal currently being viewed.
 * @uses $primaryGalleys array List of article galleys that are not supplementary or dependent
 * @uses $supplementaryGalleys array List of article galleys that are supplementary
 *}
 {include file="frontend/components/header.tpl" pageTitleTranslated=$article->getLocalizedTitle()|escape}

 <main class="container main__content" id="main">
   <div class="row">
     <div class="offset-md-1 col-md-10 offset-lg-2 col-lg-8">
       {* Show article overview *}
       {include file="frontend/objects/article_details.tpl"}
       {call_hook name="Templates::Article::Footer::PageFooter"}
     </div>
   </div>
 </main>

{include file="frontend/components/footer.tpl"}
