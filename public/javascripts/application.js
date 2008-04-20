// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function changeStyle(theme) {
	var codeSection = $('code')
		var pres = codeSection.getElementsByTagName("pre")
		for (var i = 0;  i < pres.length; i = i + 1) {
			var pre = pres[i]
			pre.className = theme
	  }
	  saveThemeCookie(theme)
}

// inspired by pastie.caboo.se
window.onload = function(e) {
  var cookie = readThemeCookie();
  var theme = cookie ? cookie : "twilight";
  if ($('theme_picker')) {
    $('theme_picker').value=theme;
  }
  changeStyle(theme);
}

/* cookies */
function readThemeCookie() {
  var ca = document.cookie.split(';');
  for(var i=0;i < ca.length;i++) {
    var c = ca[i];
    while (c.charAt(0)==' ') {
      c = c.substring(1,c.length);
    }
    if (c.indexOf("theme=") == 0) return c.substring(6,c.length);
  }
  return null;
 }
 
function saveThemeCookie(value) {
    document.cookie = "theme="+ value +"; path=/";
}