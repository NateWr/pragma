{**
 * templates/frontend/pages/announcements.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view the latest announcements
 *
 * @uses $announcements array List of announcements
 *}
{include file="frontend/components/header.tpl" pageTitle="announcement.announcements"}

<main class="container main__content" id="pragma_content_main">
	<div class="row">
		<div class="offset-md-1 col-md-10 offset-lg-2 col-lg-8">
			<header class="main__header">
				<h1 class="main__title">
					<span>{translate key="announcement.announcements"}</span>
				</h1>
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="website" anchor="announcements" sectionTitleKey="announcement.announcements"}
			</header>

			{$announcementsIntroduction|strip_unsafe_html}

			<section class="announcements__toc">
				{foreach from=$announcements item=announcement}
					<article>
						{include file="frontend/objects/announcement_summary.tpl"}
					</article>
				{/foreach}
			</section>
		</div>
	</div><!-- .row -->
</main><!-- .page -->

{include file="frontend/components/footer.tpl"}
