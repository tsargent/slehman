module VideosHelper
  
  def dataSetup(video)
    service = video.service
    src = video.url
    ytcontrols = service == 'youtube' ? 'true' : 'false'
    raw '{ "techOrder": ["'+service+'"], "ytcontrols": "'+ytcontrols+'", "src": "'+src+'" }'
  end
  
end
