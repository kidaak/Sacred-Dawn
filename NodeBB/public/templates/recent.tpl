<div class="recent">
	<ol class="breadcrumb">
		<li><a href="{relative_path}/">[[global:home]]</a></li>
		<li class="active">[[recent:title]] <a href="{relative_path}/recent.rss"><i class="fa fa-rss-square"></i></a></li>
	</ol>

	<ul class="nav nav-pills">
		<li class=''><a href='{relative_path}/recent/day'>[[recent:day]]</a></li>
		<li class=''><a href='{relative_path}/recent/week'>[[recent:week]]</a></li>
		<li class=''><a href='{relative_path}/recent/month'>[[recent:month]]</a></li>
	</ul>

	<br />

	<a href="{relative_path}/recent">
		<div class="alert alert-warning hide" id="new-topics-alert"></div>
	</a>

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		<strong>[[recent:no_recent_topics]]</strong>
	</div>
	<!-- ENDIF !topics.length -->

	<div class="category row">
		<div class="col-md-12">
		<ul id="topics-container" data-nextstart="{nextStart}">
			<!-- BEGIN topics -->
			<li class="category-item <!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread -->" itemprop="itemListElement" data-tid="{topics.tid}" data-cid="{topics.cid}">
				<meta itemprop="name" content="{topics.title}">

				<div class="category-body">
					<div class="row">

						<div class="col-md-8 col-sm-9">

							<!-- IF showSelect -->
							<i class="fa fa-fw fa-square-o pull-left select pointer"></i>
							<!-- ENDIF showSelect -->

							<div class="category-profile-pic">
								<a href="<!-- IF topics.user.userslug -->{relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->">
									<img src="{topics.user.picture}" alt="{topics.user.username}" class="profile-image user-img" title="{topics.user.username}">
								</a>
							</div>
							<div class="category-text">
								<p><strong><!-- IF topics.pinned --><i class="fa fa-thumb-tack"></i><!-- ENDIF topics.pinned --> <!-- IF topics.locked --><i class="fa fa-lock"></i><!-- ENDIF topics.locked --></strong>
									<a href="{relative_path}/topic/{topics.slug}" itemprop="url" class="topic-title">{topics.title}</a><br />

									<small>
									<!-- IF topics.user.userslug -->
										[[global:posted_in_ago_by, <a href="{relative_path}/category/{topics.category.slug}"><i class="fa {topics.category.icon}"></i> {topics.category.name}</a>, <span class="timeago" title="{topics.relativeTime}"></span>, {topics.user.username}]]
									<!-- ELSE -->
										[[global:posted_in_ago_by_guest, <a href="{relative_path}/category/{topics.category.slug}"><i class="fa {topics.category.icon}"></i> {topics.category.name}</a>, <span class="timeago" title="{topics.relativeTime}"></span>]]
									<!-- ENDIF topics.user.userslug -->
									<br/>
<!-- IF topics.tags.length -->
	<!-- BEGIN tags -->
		<a href="{relative_path}/tags/{topics.tags.name}"><span class="tag-item" data-tag="{topics.tags.name}">&bull; {topics.tags.name}</span></a>
	<!-- END tags -->
<!-- ENDIF topics.tags.length -->
									</small>
								</p>
							</div>
						</div>
						<div class="col-xs-1 category-stat hidden-xs">
							<strong class="human-readable-number" title="{topics.postcount}">{topics.postcount}</strong><br />
							<small>[[global:posts]]</small>
						</div>
						<div class="col-xs-1 category-stat hidden-xs">
							<strong class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</strong><br />
							<small>[[global:views]]</small>
						</div>

						<div class="col-xs-2 category-stat replies hidden-sm hidden-xs">
							<!-- IF topics.unreplied -->
							<p class="no-replies">[[category:no_replies]]</p>
							<!-- ELSE -->

							<a href="<!-- IF topics.teaser.user.userslug -->{relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->"><img class="profile-image small user-img" src="{topics.teaser.user.picture}" title="{topics.teaser.user.username}" /></a>
							<a href="{relative_path}/topic/{topics.slug}/{topics.teaser.index}">
								[[global:replied_ago, <span class="timeago" title="{topics.teaser.timestamp}"></span>]]
							</a>

							<!-- ENDIF topics.unreplied -->
						</div>
					</div>
				</div>

			</li>
			<!-- END topics -->
		</ul>
		</div>
	</div>
</div>