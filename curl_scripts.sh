ACCESS_TOKEN=ya29.Glu2BDCf9KyezzFA-VRevk5zlMK7CcxAK6YfrgltdJ2Ccqmu83_whK7i54OZhHU8lWvnS9qiEpS1KeF0utARxCBemIl8oKk6sCFVEDIoHRByazgiPhA_1VNWg8Zj
YOUR_API_KEY=AIzaSyAMkHWnLNAvpKte-XA9nh3RheX7lFn_dNM

## Get My Videos list.
## Result: ./video_list.txt
curl -vvv -i -G -H "Authorization: Bearer ${ACCESS_TOKEN}" \
           -d "type=video&forMine=true&maxResults=25&part=snippet" \
           https://www.googleapis.com/youtube/v3/search/

## Get video info by ID. 
## Only works on googel playground and don't need access_token.
## See: https://developers.google.com/youtube/v3/docs/videos/list
## Result: ./videos.txt
curl -vvv -i -G -d "id=QnrWLbJm9_8&part=snippet%2CcontentDetails%2Cstatistics&key=${YOUR_API_KEY}" \
           https://www.googleapis.com/youtube/v3/videos

## Get My Channels.
## Can get the # of subscribers.
## Result: ./channel.txt
curl -vvv -i -G -H "Authorization: Bearer ${ACCESS_TOKEN}" \
           -d "mine=true&part=snippet%2CcontentDetails%2Cstatistics%2Clocalizations%2Cstatus%2CbrandingSettings%2CauditDetails" \
           https://www.googleapis.com/youtube/v3/channels/


## Query reports for views by day, my owned channel.
## Result: ./query_report_view_by_day.txt
curl -vvv -i -G -H "Authorization: Bearer ${ACCESS_TOKEN}" \
           -d "ids=channel==MINE&start-date=2017-07-01&end-date=2017-08-01&metrics=views&dimensions=day" \
            https://www.googleapis.com/youtube/analytics/v1/reports


## Query reports for views by day, my owned channel.
## Result: ./query_report_view_duration_by_day_product.txt
curl -vvv -i -G -H "Authorization: Bearer ${ACCESS_TOKEN}" \
           -d "ids=channel==MINE&start-date=2017-07-01&end-date=2017-08-01&metrics=views,averageViewDuration&dimensions=day,youtubeProduct" \
            https://www.googleapis.com/youtube/analytics/v1/reports
## Result: ./query_report_views_watched_subscribers_gain_lost.txt
curl -vvv -i -G -H "Authorization: Bearer ${ACCESS_TOKEN}" \
           -d "ids=channel==MINE&start-date=2015-01-01&end-date=2017-09-01&metrics=views,estimatedMinutesWatched,averageViewDuration,averageViewPercentage,subscribersGained,subscribersLost&dimensions=day" \
            https://www.googleapis.com/youtube/analytics/v1/reports


## Query reports for viewer percentage by ageGroup & gender.
## Result: ./query_report_viewerPercentage_by_ageGroup_gender.txt
curl -vvv -i -G -H "Authorization: Bearer ${ACCESS_TOKEN}" \
           -d "ids=channel==MINE&start-date=2017-07-01&end-date=2017-08-01&metrics=viewerPercentage&dimensions=ageGroup,gender" \
            https://www.googleapis.com/youtube/analytics/v1/reports


## Query channel sections:
## Result: ./channel_sections.txt
curl -vvv -i -G -H "Authorization: Bearer ${ACCESS_TOKEN}" \
           -d "mine=true&part=snippet%2CcontentDetails" \
           https://www.googleapis.com/youtube/v3/channelSections/
## or
curl -vvv -i -G -d "channelId=UCDd0gHs1F9U1Suw6aHGFH5g&part=snippet%2CcontentDetails&key=${YOUR_API_KEY}" \
              https://www.googleapis.com/youtube/v3/channelSections


## Get PlaylistItems by playlist_id
## Result: ./playlist_items.txt
curl -vvv -i -G -d "playlistId=UUDd0gHs1F9U1Suw6aHGFH5g&maxResults=25&part=snippet%2CcontentDetails&key=${YOUR_API_KEY}" \
              https://www.googleapis.com/youtube/v3/playlistItems


## Get comment threads by video.id
## Result: ./comment_threads.txt
curl -vvv -i -G -d "videoId=lTCZMFWqWPQ&part=snippet%2Creplies&key=${YOUR_API_KEY}" \
              https://www.googleapis.com/youtube/v3/commentThreads


## Get comment threads by channel.id
## Result: ./comment_threads.txt
curl -vvv -i -G -d "channelId=UCDd0gHs1F9U1Suw6aHGFH5g&part=snippet%2Creplies&key=${YOUR_API_KEY}" \
              https://www.googleapis.com/youtube/v3/commentThreads/


## Get video catagories by regionCode=US
## Result: ./video_categories.txt
curl -vvv -i -G -d "regionCode=US&part=snippet&key=${YOUR_API_KEY}" \
              https://www.googleapis.com/youtube/v3/videoCategories


## Get all my subscribers by channel
## Result: ./my_subscribers.txt
curl -vvv -i -G -H "Authorization: Bearer ${ACCESS_TOKEN}" \
                -d "mySubscribers=true&part=subscriberSnippet" \
              https://www.googleapis.com/youtube/v3/subscriptions
## Get maximum 1000 my recent subscribers by channel, same as above, except newest first.
curl -vvv -i -G -H "Authorization: Bearer ${ACCESS_TOKEN}" \
                -d "myRecentSubscribers=true&part=subscriberSnippet" \
              https://www.googleapis.com/youtube/v3/subscriptions


## Query reports for audience retention.
## Result: ./query_report_audience_watch_ratio.txt
curl -vvv -i -G -H "Authorization: Bearer ${ACCESS_TOKEN}" \
           -d "ids=channel==MINE&filters=video==TA0su5jk-wk&start-date=2015-01-01&end-date=2017-08-30&metrics=audienceWatchRatio&dimensions=elapsedVideoTimeRatio" \
            https://www.googleapis.com/youtube/analytics/v1/reports

curl -vvv -i -G -H "Authorization: Bearer ${ACCESS_TOKEN}" \
           -d "ids=channel==MINE&filters=video==TA0su5jk-wk&start-date=2015-01-01&end-date=2017-08-30&metrics=relativeRetentionPerformance&dimensions=elapsedVideoTimeRatio" \
            https://www.googleapis.com/youtube/analytics/v1/reports


