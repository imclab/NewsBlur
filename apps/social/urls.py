from django.conf.urls.defaults import url, patterns
from apps.social import views

urlpatterns = patterns('',
    url(r'^share_story/?$', views.mark_story_as_shared, name='mark-story-as-shared'),
    url(r'^twitter_connect/?$', views.twitter_connect, name='twitter-connect'),
    url(r'^facebook_connect/?$', views.facebook_connect, name='facebook-connect'),
    url(r'^twitter_disconnect/?$', views.twitter_disconnect, name='twitter-disconnect'),
    url(r'^facebook_disconnect/?$', views.facebook_disconnect, name='facebook-disconnect'),
    url(r'^friends/?$', views.friends, name='friends'),
    url(r'^profile/?$', views.profile, name='profile'),
    url(r'^follow/?$', views.follow, name='social-follow'),
    url(r'^unfollow/?$', views.unfollow, name='social-unfollow'),
    url(r'^comments/?$', views.story_comments, name='social-story-comments'),
    url(r'^(?P<user_id>\d+)/(?P<username>\w+)/?$', views.shared_story_feed, name='shared-story-feed'),
    url(r'^(?P<username>\w+)/?$', views.shared_stories_public, name='shared-stories-public'),
)