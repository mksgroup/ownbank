<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
<title>Home</title>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="resources/hls/hls.min.js"></script>
<script src="resources/script/splayer.js"></script>
</head>
<%-- Hiển thị video
Tham số:
videoPath: URL tới video
subPath (optional): đường dẫn tới file phụ đề.
subLang (optional): Ngôn ngữ. Mặc định là "en-US"
subLabel (optional): Tên ngôn ngữ. Mặc định là "English".
 --%>
<body style="overflow: hidden;">
	<div id="p_loading"></div>
	<div id='HlsStatus'></div>
	<video id="video" controls autoplay class="videoCentered" width="100%" height="100%">
      <c:if test="${not empty custom_sub_path}">
        <track src="${custom_sub_path}" kind="captions" srclang="${custom_sub_lang}" label="${custom_sub_label}" default />
      </c:if>
	</video>
	<br/>
	<script>
		$(document).ready(
			function() {
				var videoPath = '${custom_video_path}';

				console.log("videoPath=" + videoPath);
				// Demo only
				if ((videoPath === null) || (videoPath == '')) {
					videoPath = "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8";
				} else {
					// Do nothing
				}

				if (videoPath !== null) {
					//$('#p_loading').text('loading video :' + videoPath);
					var video = $('#video')[0];
					video.volume = 0.05;
					loadStream(decodeURIComponent(getURLParam(
							'src', videoPath)));
				} else {
					$('#p_loading').text('Video not found');
				}

		});
	</script>

</body>
</html>
