object WebModule1: TWebModule1
  OldCreateOrder = False
  OnCreate = WebModuleCreate
  Actions = <
    item
      MethodType = mtGet
      Name = 'top'
      PathInfo = '/'
      OnAction = WebModule1topAction
    end
    item
      MethodType = mtGet
      Name = 'indexpage'
      PathInfo = '/index'
      OnAction = WebModule1indexpageAction
    end
    item
      MethodType = mtPost
      Name = 'regist'
      PathInfo = '/regist'
      OnAction = WebModule1registAction
    end
    item
      MethodType = mtGet
      Name = 'admin'
      PathInfo = '/admin'
      OnAction = WebModule1adminAction
    end
    item
      Name = 'search'
      PathInfo = '/search'
      OnAction = WebModule1searchAction
    end
    item
      Name = 'help'
      PathInfo = '/help'
      OnAction = WebModule1helpAction
    end
    item
      Name = 'master'
      PathInfo = '/master'
      OnAction = WebModule1masterAction
    end
    item
      Name = 'alert'
      PathInfo = '/alert'
      OnAction = WebModule1alertAction
    end
    item
      MethodType = mtPost
      Name = 'usrdel'
      PathInfo = '/userdel'
    end
    item
      Name = 'jump'
      PathInfo = '/jump'
      OnAction = WebModule1jumpAction
    end
    item
      MethodType = mtGet
      Name = 'link'
      PathInfo = '/link'
      OnAction = WebModule1linkAction
    end
    item
      MethodType = mtPost
      Name = 'admdel'
      PathInfo = '/admindel'
      OnAction = WebModule1admdelAction
    end
    item
      Name = 'login'
      PathInfo = '/login'
      OnAction = WebModule1loginAction
    end
    item
      MethodType = mtPost
      Name = 'adminset'
      PathInfo = '/adminset'
      OnAction = WebModule1adminsetAction
    end
    item
      MethodType = mtGet
      Name = 'logout'
      PathInfo = '/logout'
      OnAction = WebModule1logoutAction
    end
    item
      MethodType = mtGet
      Name = 'img'
      PathInfo = '/src'
      OnAction = WebModule1imgAction
    end
    item
      MethodType = mtGet
      Name = 'file'
      PathInfo = '/file'
      OnAction = WebModule1fileAction
    end
    item
      Name = 'title'
      PathInfo = '/title'
      OnAction = WebModule1titleAction
    end>
  Height = 385
  Width = 436
  object articles: TDataSetPageProducer
    HTMLDoc.Strings = (
      '                                            <hr size=1>'
      
        #9'<section id=number><a name=<#number>></a><a href=/jump?num=<#nu' +
        'mber> style=text-decoration:none>'
      #9#9'[<#number>]</a></section>'
      #9'<section id=title><#title></section>'
      #9'<section id=name>'#12288'Name:<h1><#name></h1></section>'
      #9'<section id=date>'#12288'Date:<h1><#date></h1></section>'
      #9'<p>'#9661#9650#9661#9650#9661#9650#9661
      #9'<section id=comment><#comment></section>'
      
        '<section id=master style=text-align:right><a href=/alert?db=<#db' +
        'num>&num=<#number>>'#22577#21578'</a></section>'
      #9'<p>'#9651#9660#9651#9660#9651#9660#9651)
    DataSet = DataModule1.FDTable2
    OnHTMLTag = articlesHTMLTag
    Left = 112
    Top = 88
  end
  object index: TDataSetPageProducer
    HTMLDoc.Strings = (
      '<!DOCTYPE html>'
      '<html lang="ja">'
      '  <head>'
      '    <meta charset="utf-8">'
      '  <meta http-equiv="Content-Style-Type" content="text/css">'
      '<style type="text/css">'
      '<!--'
      '    <#css id=2>'
      '    <#css id=4>'
      '-->'
      '</style>'
      
        '    <script src=//cdn.rawgit.com/google/code-prettify/master/loa' +
        'der/run_prettify.js></script>'
      
        '    <script type=text/javascript src=//ajax.googleapis.com/ajax/' +
        'libs/jquery/1.8.1/jquery.min.js></script>'
      '    <script>'
      '    <!--'
      '    <#js id=1>'
      '    <#js id=2>'
      '    -->'
      '    </script>'
      '    <title>'
      '    <#title>'
      '    </title>'
      '  </head>'
      '  <body>'
      '<#pr>'
      '    <a href=/ style=text-decoration:none><#title2></a>'
      ''
      '    <#header>'
      ''
      '    <hr size="1" width="100%">'
      '    <form action=/userdel?db=<#dbnum> method="post" id=search>'
      '      <label><p>'#35352#20107'No</p><input name="num"></label>'
      
        '      <label><p>Pass</p><input type="password" name="password"><' +
        '/label>'
      '      <input type="submit" value="'#21066#38500'">'
      '    </form>'
      '    <form action=/jump?db=<#dbnum> method=post id=search>'
      '      <label><p>'#35352#20107'No</p><input name=num></label>'
      '      <input type=submit value='#31227#21205'>'
      '    </form>'
      '    <p><a href=/search?db=<#dbnum>>'#26908#32034#12506#12540#12472'</a></p>'
      '    <p style=text-align:right><a href=#article>'#19979#12408#31227#21205'</a></p>'
      '    <p style=text-align:center><#database></p>'
      '    <#footer>'
      '  <#article>'
      #9'<a name=article></a>'
      #9'<p style=text-align:right><a href=#top>Top'#12408#31227#21205'</a></p>'
      '  <#footer>'
      
        '    <p style=text-align:center><a href="/admin?db=<#dbnum>">'#31649#29702#32773#29992 +
        #12525#12464#12452#12531'</a></p>'
      '  </body>'
      '</html>')
    DataSet = DataModule1.FDTable3
    OnHTMLTag = indexHTMLTag
    Left = 112
    Top = 32
  end
  object admin: TDataSetTableProducer
    Columns = <
      item
        Title.Caption = 'check'
      end
      item
        FieldName = 'NUMBER'
      end
      item
        FieldName = 'TITLE'
      end
      item
        FieldName = 'NAME'
      end
      item
        FieldName = 'DATE'
      end>
    Footer.Strings = (
      '')
    MaxRows = 30
    DataSet = DataModule1.FDTable2
    OnFormatCell = adminFormatCell
    Left = 176
    Top = 32
  end
  object search: TPageProducer
    HTMLDoc.Strings = (
      ''
      '<!DOCTYPE HTML>'
      ''
      '<html>'
      '  <head>'
      '    <title>'#26908#32034'</title>'
      '    <style type=text/css>'
      '    <!--'
      '    <#css>'
      '    -->'
      '    </style>'
      '  </head>'
      ''
      '  <body>'
      '<#pr>'
      '    <form action="/search<#query>" method="post">'
      '    <p align="center"><strong>'#25237#31295#26908#32034
      '</strong>'
      '    </p>'
      '    <p>'
      '</p>'
      '    <p>'
      '    </p>'
      '      <p align="center">'#26908#32034#12290#12473#12506#12540#12473#12391#21306#20999#12387#12390#12367#12384#12373#12356#12290'</p>'
      '    <select name=type>'
      '      <option value=OR>OR</option>'
      '      <option value=AND>AND</option>'
      '    </select>      '
      
        '        <div style="HEIGHT: 26px; WIDTH: 105px; POSITION: relati' +
        've; DISPLAY: inline" ms_positioning="FlowLayout">'#26908#32034#12527#12540#12489
      '</div>'
      '      <p>&nbsp;<input name="word1"></p>'
      
        '    <p><input type="radio" name="filter" style="HEIGHT: 20px; WI' +
        'DTH: 17px" size="17" value="name">'#21517#21069#12363#12425#26908#32034' <input type="radio" che' +
        'cked="true" style="HEIGHT: 20px; WIDTH: 16px" size="16" name="fi' +
        'lter" value="com">'#26412#25991#12363#12425#26908#32034
      '</p>'
      '      <p>'
      '    <input type="submit" value="'#26908#32034'"></p>'
      '    </form>'
      '      <p><a href="/">'#25522#31034#26495#12408#25147#12427
      '</a></p>'
      '    <#items>'
      '  </body>'
      '</html>')
    OnHTMLTag = searchHTMLTag
    Left = 240
    Top = 32
  end
  object items: TDataSetPageProducer
    HTMLDoc.Strings = (
      '                                            <hr size=1>'
      #9'<section id=title><#title></section>'
      #9'<section id=name>'#12288'Name:<h1><#name></h1></section>'
      #9'<section id=date>'#12288'Date:<h1><#date></h1></section>'
      #9
      #9'<section id=comment><#item></section>'
      '')
    DataSet = DataModule1.FDTable2
    OnHTMLTag = itemsHTMLTag
    Left = 240
    Top = 144
  end
  object help: TPageProducer
    HTMLDoc.Strings = (
      ''
      '<!DOCTYPE html>'
      ''
      '<html><head><meta charset=utf8><title>'#20351#12356#26041'</title></head>'
      '<body>'
      '<#pr>'
      '<P>'#35370#21839#32773#12398#30342#12373#12435'</P>'
      '<form action=/help method=post>'
      #9'<p>'#12362#21839#12356#21512#12431#12379'<'#21066#38500#20381#38972#12394#12393#20309#12391#12418'></p>'
      #9'<textarea name=help style=height:100px;width:250px>'
      #25237#31295#32773#21517#12394#12393#65306
      #30456#35527#20869#23481#65306
      #12381#12398#20182#65306'</textarea><br>'
      #9'<input type=submit value="'#36865#20449'"></form>'
      #9'<p><br>'
      '<p>'#38283#30330#32773#12398#30342#12373#12435
      '<p>pybbs'#12398'API'
      '<p>ArticleAPI ... ~/read/api/<b>dbname</b>/<b>number</b>'
      '<p>ListAPI ... ~/headline/api'
      '<p><br>'
      '<p>'
      '<p>'#21033#29992#35215#32004
      '<p>'#12371#12428#12363#12425#26360#12365#12414#12377
      '<p style=text-align:center><a href=/>'#25147#12427'</a>'
      '</body>'
      '</html>')
    OnHTMLTag = helpHTMLTag
    Left = 304
    Top = 32
  end
  object top: TPageProducer
    HTMLDoc.Strings = (
      '<!doctype html>'
      '<html class=no-js lang="ja">'
      '<head>'
      #9'<title>Top Page</title>'
      
        '<link rel=stylesheet type=text/css href="/file?type=css&id=1" re' +
        'f=top>'
      
        '<link rel=stylesheet type=text/css href="/file?type=css&id=3" re' +
        'f=normal>'
      
        ' <script type="text/javascript" src="//ajax.googleapis.com/ajax/' +
        'libs/jquery/2.1.4/jquery.min.js"></script>'
      
        ' <link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jq' +
        'ueryui/1.10.4/themes/smoothness/jquery-ui.css" />'
      
        ' <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jq' +
        'uery-ui.min.js"></script>'
      '<script src="/file?type=js&id=3">org</script>'
      '<script src="/file?type=js&id=4">moder</script>'
      '</head>'
      '<body>'
      '<#pr>'
      '<div id="fb-root"></div>'
      ''
      '<script>(function(d, s, id) {'
      '  var js, fjs = d.getElementsByTagName(s)[0];'
      '  if (d.getElementById(id)) return;'
      '  js = d.createElement(s); js.id = id;'
      
        '  js.src = "//connect.facebook.net/ja_JP/sdk.js#xfbml=1&version=' +
        'v2.8";'
      '  fjs.parentNode.insertBefore(js, fjs);'
      '}(document, '#39'script'#39', '#39'facebook-jssdk'#39'));</script>'
      ''
      ''
      '<header><h1 style="text-align: center;">'#28961#26009#38651#23376#25522#31034#26495#12408#12424#12358#12371#12381
      '</h1></header>'
      '<div class="slideshow">'
      #9'<div class="slideshow-slides"><#slide></div>'
      ''
      #9'<div class="slideshow-nav">'
      #9'<a href="#" class="prev">prev'
      '</a>'
      #9'<a href="#" class="next">next'
      '</a>'
      '        </div>'
      ''
      #9'<div class="slideshow-indicator"></div>'
      '</div>'
      '<p>'#12288'<em style="background-color: aqua;">'#12288#12288#12288#12288'</em>'#12539#12539#12539'new!'
      
        '        <p>[ <a href=/index?db=<#dbnum>><#info></a> ] ='#12362#30693#12425#12379' <p>[' +
        ' <a href="/master">master'
      
        '</a> ] ='#31649#29702#20154'<div class="fb-like" data-href="http://pybbs.herokuap' +
        'p.com" data-layout="box_count" data-action="like" data-size="sma' +
        'll" data-show-faces="true" data-share="false"></div>'
      
        '<p><a href="http://www.xn--gckj5d1ktb3488cn4q.jp/" target="_blan' +
        'k"><img alt="'#28961#26009#12459#12454#12531#12479#12540'" src="http://www.xn--gckj5d1ktb3488cn4q.jp/' +
        'counter.php?id=pybbs" border="0"></a>'
      '<footer>'
      '<p><br>'
      '<p><a href=/title>'#12479#12452#12488#12523#34920#31034'</a>'
      '<p><a href="/help">'#20351#12356#26041#26696#20869
      '</a>'
      '<p><a href=/search>'#26908#32034'</a>'
      '<p>PR '#12522#12531#12463'<br>'
      
        '<p><a href="https://www.amazon.co.jp/%E9%AB%98%E6%A0%A1%E5%8D%92' +
        '%E6%A5%AD%E3%81%BE%E3%81%A7%E3%81%AE%E3%82%B5%E3%83%83%E3%82%AB%' +
        'E3%83%BC%E6%88%A6%E8%A1%93-sanuki_kainushi-ebook/dp/B00AXBM08Q/r' +
        'ef=sr_1_7?ie=UTF8&amp;qid=1479369992&amp;sr=8-7&amp;keywords=san' +
        'uki_kainushi">'#39640#26657#21330#26989#12414#12391#12398#12469#12483#12459#12540#25126#34899
      '</a><br>amazon kindle'
      '</p>'
      '<p>'
      
        '<p><a href="https://www.amazon.co.jp/%E4%B8%AD%E5%AD%A6%E5%8D%92' +
        '%E6%A5%AD%E3%81%BE%E3%81%A7%E3%81%AE%E3%82%B5%E3%83%83%E3%82%AB%' +
        'E3%83%BC%E6%88%A6%E8%A1%93-sanuki_kainushi-ebook/dp/B014X0S874/r' +
        'ef=sr_1_3?s=digital-text&amp;ie=UTF8&amp;qid=1479370246&amp;sr=1' +
        '-3">'#20013#23398#21330#26989#12414#12391#12398#12469#12483#12459#12540#25126#34899
      '</a><br>amazon kindle'
      '</p>'
      '</footer>'
      ''
      '</body>'
      '</html>')
    OnHTMLTag = topHTMLTag
    Left = 48
    Top = 32
  end
  object master: TPageProducer
    HTMLDoc.Strings = (
      '<!doctype html>'
      '<head>'
      '<meta charset=utf-8>'
      '</head>'
      '<body>'
      '<#pr>'
      '<form action=/master method=post>'
      '<p><#request>'
      '<input type=radio name=delete value=some checked>'#21066#38500#28168#12415#12434#28040#21435#12288
      '<input type=radio name=delete value=all>'#12377#12409#12390#28040#21435
      '<input type=submit value="'#36865#20449'">'
      '</form>'
      '<p style=text-align:center><a href=/logout>'#12525#12464#12450#12454#12488'</a>'
      '<p style=text-align:center><a href=/>'#25147#12427'</a>'
      '</body></html>')
    OnHTMLTag = masterHTMLTag
    Left = 48
    Top = 144
  end
  object alert: TDataSetPageProducer
    HTMLDoc.Strings = (
      '<tr><td>'
      '<p><#plus><#date>'
      '<p><#article></td><td><#request>'
      '</td><tr>')
    DataSet = DataModule1.FDTable4
    OnHTMLTag = alertHTMLTag
    Left = 48
    Top = 192
  end
  object footer: TDataSetPageProducer
    HTMLDoc.Strings = (
      '<p style=text-align:center>[ <#link> ] <#recent>')
    DataSet = DataModule1.FDTable1
    OnHTMLTag = footerHTMLTag
    Left = 112
    Top = 192
  end
  object mail: TPageProducer
    HTMLDoc.Strings = (
      '<!doctyle html>'
      '<html>'
      '<head><meta charset=utf-8></head>'
      '<body>'
      '<#pr>'
      '<form action=/alert<#query>  method=post>'
      '  <#content>'
      '<textarea name=request></textarea>'
      '<input type=submit>'
      '<p style=text-align:center><a href=/jump<#query>>'#25147#12427'</a>'
      '</form>'
      '</body></html>')
    OnHTMLTag = mailHTMLTag
    Left = 176
    Top = 144
  end
  object css1: TPageProducer
    HTMLDoc.Strings = (
      '@media only screen and (min-width:900px){'
      '.slideshow-nav a.prev {'
      #9'margin-left:-480px'
      #9'}'
      '.slideshow-nav a.next {'
      #9'margin-left:408px'
      #9'}'
      '}'
      '@media only screen and (min-width:600px)'
      'and (max-width:899px){'
      'header h1 {'
      #9'font-size:1em'
      #9'}'
      '.slideshow .slide img {'
      #9'display:none'
      '}'
      '.slideshow-nav a.prev {'
      #9'margin-left:-300px'
      #9'}'
      '.slideshow-nav a.next {'
      #9'margin-left:200px'
      #9'}'
      '}'
      '@media only screen and (max-width:599px){'
      'header h1 {'
      #9'font-size:1em'
      #9'}'
      '.slideshow .slide img {'
      #9'display:none'
      '}'
      '.slideshow-nav a.prev {'
      #9'margin-left:-150px'
      #9'}'
      '.slideshow-nav a.next {'
      #9'margin-left:100px'
      #9'}'
      '}'
      ''
      '.slideshow-slides {'
      #9'height:100%;'
      #9'position:absolute;'
      #9'width:100%;'
      '}'
      ''
      '.slideshow {'
      #9'background-color:rgb(255,225,225);'
      #9'width:100%;'
      #9'height:465px;'
      #9'overflow:hidden;'
      #9'position:relative'
      '}'
      ''
      '.slideshow-slides .slide {'
      #9'height:100%;'
      #9'overflow:auto;'
      #9'position:absolute;'
      #9'width:100%;'
      '}'
      ''
      '.slide p {'
      #9'font-size:1.5em'
      '}'
      ''
      '.slideshow-nav a,'
      '.slideshow-indicator a {'
      #9'overflow:hidden'
      '}'
      ''
      '.slideshow-nav a:before,'
      '.slideshow-indicator a:before {'
      #9'content:url("/src?name=sprites.png");'
      #9'display:inline-block;'
      #9'font-size:0;'
      #9'line-height:0'
      '}'
      ''
      '.slideshow-nav a {'
      #9'position:absolute;'
      #9'top:50%;'
      #9'left:50%;'
      #9'width:72px;'
      #9'height:72px;'
      #9'margin-top:-36px'
      '}'
      ''
      '.slideshow-nav a.prev:before {'
      #9'margin-top:-20px'
      '}'
      ''
      '.slideshow-nav a.next:before {'
      #9'margin-left:-80px;'
      #9'margin-top:-20px'
      '}'
      ''
      '.slideshow-nav a.disabled {'
      #9'display:none'
      '}'
      ''
      '.slideshow-indicator {'
      #9'bottom:30px;'
      #9'height:16px;'
      #9'left:0;'
      #9'position:absolute;'
      #9'right:0;'
      #9'text-align:center'
      '}'
      ''
      '.slideshow-indicator a {'
      #9'display:inline-block;'
      #9'width:16px;'
      #9'height:16px;'
      #9'margin-left:3px;'
      #9'margin-right:3px'
      '}'
      ''
      '.slideshow-indicator a.active {'
      #9'cursor:default'
      '}'
      ''
      '.slideshow-indicator a:before {'
      #9'margin-left:-110px'
      '}'
      ''
      '.slideshow-indicator a.active:before {'
      #9'margin-left:-130px'
      '}'
      ''
      '.no-js .slideshow {'
      #9'height:auto'
      '}'
      ''
      '.no-js .slideshow-slides {'
      #9'height:auto;'
      #9'position:static'
      '}'
      ''
      '.no-js .slideshow-slides .slide {'
      #9'display: block;'
      #9'height: auto;'
      #9'position:static'
      '}'
      ''
      '.no-js .slideshow-slides .slide .box{'
      #9'margin:auto;'
      #9'position:static'
      '}'
      ''
      '.no-js .slideshow-nav,'
      '.no-js .slideshow-indicator {'
      #9'display:none'
      '}')
    Left = 360
    Top = 96
  end
  object css2: TPageProducer
    HTMLDoc.Strings = (
      'section#number {'
      '    display:inline'
      '}'
      ''
      'section#title {'
      '    display:inline;'
      '    font:bold;'
      '    font-size:1.2em;'
      '    color:#D01166;'
      '}'
      ''
      'section#name h1 {'
      '    font:bold;'
      '    font-size:1em;'
      '    color:#007000;'
      '    margin:0;'
      '}'
      ''
      'section#date h1 {'
      '    font-size:1em;'
      '    margin:0;'
      '}'
      ''
      'section h1 {'
      '    display:inline;'
      '}'
      ''
      'header {'
      '    margin:auto;'
      '    border:solid 1px #aaaaaa;'
      '    box-shadow:0 2px 3px #cccccc,'
      '               0 0 #ff8800 inset;'
      '    padding:18px;'
      '    border-radius:5px;'
      '    background:-webkit-linear-gradient(#ffffff 0%,#014471 50%,'
      '        #014471 51%,#ffffff 100%);'
      '    overflow:hidden;'
      '    width:100%'
      '}'
      ''
      'header table {'
      '    margin:auto'
      '}'
      ''
      'header p {'
      '    display:inline'
      '}'
      ''
      '@media only screen and (min-width:900px){'
      'header textarea {'
      '    width:100%;'
      '    height:150px;'
      #9'}'
      '}'
      '@media only screen and (max-width:899px){'
      'header textarea {'
      #9'width:70%;'
      #9'height:90px'
      #9'}'
      '}'
      ''
      'button {'
      #9'position:absolute;'
      #9'width:80px;'
      #9'height:30px;'
      #9'right:20px'
      '}'
      ''
      'button.sticky {'
      #9'position:fixed;'
      #9'top:0'
      '}'
      ''
      'input[type=password] {'
      '    width:55px'
      '}'
      ''
      'form#search input {'
      '    height:22px;'
      '    width:55px'
      '}'
      ''
      'span {'
      '    color:#ff0000'
      '}'
      ''
      'p {'
      #9'text-indent:0;'
      #9'margin:0'
      '}'
      ''
      'body {'
      #9'line-height:1.5'
      '}'
      ''
      'table {'
      #9'margin:auto;'
      #9'border:0'
      '}'
      ''
      'form#search {'
      #9'border:solid;'
      #9'display:inline-block;'
      #9'margin-top:30px;'
      #9'margin-right:30px;'
      #9'margin-left:30px;'
      #9'margin-bottom:30px'
      '}')
    Left = 360
    Top = 144
  end
  object css3: TPageProducer
    HTMLDoc.Strings = (
      '/*! normalize.css v2.1.2 | MIT License | git.io/normalize */'
      ''
      
        '/* =============================================================' +
        '============='
      '   HTML5 display definitions'
      
        '   =============================================================' +
        '============= */'
      ''
      '/**'
      ' * Correct `block` display not defined in IE 8/9.'
      ' */'
      ''
      'article,'
      'aside,'
      'details,'
      'figcaption,'
      'figure,'
      'footer,'
      'header,'
      'hgroup,'
      'main,'
      'nav,'
      'section,'
      'summary {'
      '    display: block;'
      '}'
      ''
      '/**'
      ' * Correct `inline-block` display not defined in IE 8/9.'
      ' */'
      ''
      'audio,'
      'canvas,'
      'video {'
      '    display: inline-block;'
      '}'
      ''
      '/**'
      
        ' * Prevent modern browsers from displaying `audio` without contr' +
        'ols.'
      ' * Remove excess height in iOS 5 devices.'
      ' */'
      ''
      'audio:not([controls]) {'
      '    display: none;'
      '    height: 0;'
      '}'
      ''
      '/**'
      ' * Address styling not present in IE 8/9.'
      ' */'
      ''
      '[hidden] {'
      '    display: none;'
      '}'
      ''
      
        '/* =============================================================' +
        '============='
      '   Base'
      
        '   =============================================================' +
        '============= */'
      ''
      '/**'
      ' * 1. Set default font family to sans-serif.'
      
        ' * 2. Prevent iOS text size adjust after orientation change, wit' +
        'hout disabling'
      ' *    user zoom.'
      ' */'
      ''
      'html {'
      '    font-family: sans-serif; /* 1 */'
      '    -ms-text-size-adjust: 100%; /* 2 */'
      '    -webkit-text-size-adjust: 100%; /* 2 */'
      '}'
      ''
      '/**'
      ' * Remove default margin.'
      ' */'
      ''
      'body {'
      '    margin: 0;'
      '}'
      ''
      
        '/* =============================================================' +
        '============='
      '   Links'
      
        '   =============================================================' +
        '============= */'
      ''
      '/**'
      
        ' * Address `outline` inconsistency between Chrome and other brow' +
        'sers.'
      ' */'
      ''
      'a:focus {'
      '    outline: thin dotted;'
      '}'
      ''
      '/**'
      
        ' * Improve readability when focused and also mouse hovered in al' +
        'l browsers.'
      ' */'
      ''
      'a:active,'
      'a:hover {'
      '    outline: 0;'
      '}'
      ''
      
        '/* =============================================================' +
        '============='
      '   Typography'
      
        '   =============================================================' +
        '============= */'
      ''
      '/**'
      
        ' * Address variable `h1` font-size and margin within `section` a' +
        'nd `article`'
      ' * contexts in Firefox 4+, Safari 5, and Chrome.'
      ' */'
      ''
      'h1 {'
      '    font-size: 2em;'
      '    margin: 0.67em 0;'
      '}'
      ''
      '/**'
      ' * Address styling not present in IE 8/9, Safari 5, and Chrome.'
      ' */'
      ''
      'abbr[title] {'
      '    border-bottom: 1px dotted;'
      '}'
      ''
      '/**'
      
        ' * Address style set to `bolder` in Firefox 4+, Safari 5, and Ch' +
        'rome.'
      ' */'
      ''
      'b,'
      'strong {'
      '    font-weight: bold;'
      '}'
      ''
      '/**'
      ' * Address styling not present in Safari 5 and Chrome.'
      ' */'
      ''
      'dfn {'
      '    font-style: italic;'
      '}'
      ''
      '/**'
      ' * Address differences between Firefox and other browsers.'
      ' */'
      ''
      'hr {'
      '    -moz-box-sizing: content-box;'
      '    box-sizing: content-box;'
      '    height: 0;'
      '}'
      ''
      '/**'
      ' * Address styling not present in IE 8/9.'
      ' */'
      ''
      'mark {'
      '    background: #ff0;'
      '    color: #000;'
      '}'
      ''
      '/**'
      ' * Correct font family set oddly in Safari 5 and Chrome.'
      ' */'
      ''
      'code,'
      'kbd,'
      'pre,'
      'samp {'
      '    font-family: monospace, serif;'
      '    font-size: 1em;'
      '}'
      ''
      '/**'
      ' * Improve readability of pre-formatted text in all browsers.'
      ' */'
      ''
      'pre {'
      '    white-space: pre-wrap;'
      '}'
      ''
      '/**'
      ' * Set consistent quote types.'
      ' */'
      ''
      'q {'
      '    quotes: "\201C" "\201D" "\2018" "\2019";'
      '}'
      ''
      '/**'
      ' * Address inconsistent and variable font size in all browsers.'
      ' */'
      ''
      'small {'
      '    font-size: 80%;'
      '}'
      ''
      '/**'
      
        ' * Prevent `sub` and `sup` affecting `line-height` in all browse' +
        'rs.'
      ' */'
      ''
      'sub,'
      'sup {'
      '    font-size: 75%;'
      '    line-height: 0;'
      '    position: relative;'
      '    vertical-align: baseline;'
      '}'
      ''
      'sup {'
      '    top: -0.5em;'
      '}'
      ''
      'sub {'
      '    bottom: -0.25em;'
      '}'
      ''
      
        '/* =============================================================' +
        '============='
      '   Embedded content'
      
        '   =============================================================' +
        '============= */'
      ''
      '/**'
      ' * Remove border when inside `a` element in IE 8/9.'
      ' */'
      ''
      'img {'
      '    border: 0;'
      '}'
      ''
      '/**'
      ' * Correct overflow displayed oddly in IE 9.'
      ' */'
      ''
      'svg:not(:root) {'
      '    overflow: hidden;'
      '}'
      ''
      
        '/* =============================================================' +
        '============='
      '   Figures'
      
        '   =============================================================' +
        '============= */'
      ''
      '/**'
      ' * Address margin not present in IE 8/9 and Safari 5.'
      ' */'
      ''
      'figure {'
      '    margin: 0;'
      '}'
      ''
      
        '/* =============================================================' +
        '============='
      '   Forms'
      
        '   =============================================================' +
        '============= */'
      ''
      '/**'
      ' * Define consistent border, margin, and padding.'
      ' */'
      ''
      'fieldset {'
      '    border: 1px solid #c0c0c0;'
      '    margin: 0 2px;'
      '    padding: 0.35em 0.625em 0.75em;'
      '}'
      ''
      '/**'
      ' * 1. Correct `color` not being inherited in IE 8/9.'
      
        ' * 2. Remove padding so people aren'#39't caught out if they zero ou' +
        't fieldsets.'
      ' */'
      ''
      'legend {'
      '    border: 0; /* 1 */'
      '    padding: 0; /* 2 */'
      '}'
      ''
      '/**'
      ' * 1. Correct font family not being inherited in all browsers.'
      ' * 2. Correct font size not being inherited in all browsers.'
      
        ' * 3. Address margins set differently in Firefox 4+, Safari 5, a' +
        'nd Chrome.'
      ' */'
      ''
      'button,'
      'input,'
      'select,'
      'textarea {'
      '    font-family: inherit; /* 1 */'
      '    font-size: 100%; /* 2 */'
      '    margin: 0; /* 3 */'
      '}'
      ''
      '/**'
      
        ' * Address Firefox 4+ setting `line-height` on `input` using `!i' +
        'mportant` in'
      ' * the UA stylesheet.'
      ' */'
      ''
      'button,'
      'input {'
      '    line-height: normal;'
      '}'
      ''
      '/**'
      
        ' * Address inconsistent `text-transform` inheritance for `button' +
        '` and `select`.'
      
        ' * All other form control elements do not inherit `text-transfor' +
        'm` values.'
      
        ' * Correct `button` style inheritance in Chrome, Safari 5+, and ' +
        'IE 8+.'
      ' * Correct `select` style inheritance in Firefox 4+ and Opera.'
      ' */'
      ''
      'button,'
      'select {'
      '    text-transform: none;'
      '}'
      ''
      '/**'
      
        ' * 1. Avoid the WebKit bug in Android 4.0.* where (2) destroys n' +
        'ative `audio`'
      ' *    and `video` controls.'
      ' * 2. Correct inability to style clickable `input` types in iOS.'
      
        ' * 3. Improve usability and consistency of cursor style between ' +
        'image-type'
      ' *    `input` and others.'
      ' */'
      ''
      'button,'
      'html input[type="button"], /* 1 */'
      'input[type="reset"],'
      'input[type="submit"] {'
      '    -webkit-appearance: button; /* 2 */'
      '    cursor: pointer; /* 3 */'
      '}'
      ''
      '/**'
      ' * Re-set default cursor for disabled elements.'
      ' */'
      ''
      'button[disabled],'
      'html input[disabled] {'
      '    cursor: default;'
      '}'
      ''
      '/**'
      ' * 1. Address box sizing set to `content-box` in IE 8/9.'
      ' * 2. Remove excess padding in IE 8/9.'
      ' */'
      ''
      'input[type="checkbox"],'
      'input[type="radio"] {'
      '    box-sizing: border-box; /* 1 */'
      '    padding: 0; /* 2 */'
      '}'
      ''
      '/**'
      
        ' * 1. Address `appearance` set to `searchfield` in Safari 5 and ' +
        'Chrome.'
      
        ' * 2. Address `box-sizing` set to `border-box` in Safari 5 and C' +
        'hrome'
      ' *    (include `-moz` to future-proof).'
      ' */'
      ''
      'input[type="search"] {'
      '    -webkit-appearance: textfield; /* 1 */'
      '    -moz-box-sizing: content-box;'
      '    -webkit-box-sizing: content-box; /* 2 */'
      '    box-sizing: content-box;'
      '}'
      ''
      '/**'
      
        ' * Remove inner padding and search cancel button in Safari 5 and' +
        ' Chrome'
      ' * on OS X.'
      ' */'
      ''
      'input[type="search"]::-webkit-search-cancel-button,'
      'input[type="search"]::-webkit-search-decoration {'
      '    -webkit-appearance: none;'
      '}'
      ''
      '/**'
      ' * Remove inner padding and border in Firefox 4+.'
      ' */'
      ''
      'button::-moz-focus-inner,'
      'input::-moz-focus-inner {'
      '    border: 0;'
      '    padding: 0;'
      '}'
      ''
      '/**'
      ' * 1. Remove default vertical scrollbar in IE 8/9.'
      ' * 2. Improve readability and alignment in all browsers.'
      ' */'
      ''
      'textarea {'
      '    overflow: auto; /* 1 */'
      '    vertical-align: top; /* 2 */'
      '}'
      ''
      
        '/* =============================================================' +
        '============='
      '   Tables'
      
        '   =============================================================' +
        '============= */'
      ''
      '/**'
      ' * Remove most spacing between table cells.'
      ' */'
      ''
      'table {'
      '    border-collapse: collapse;'
      '    border-spacing: 0;'
      '}')
    Left = 360
    Top = 192
  end
  object css4: TPageProducer
    HTMLDoc.Strings = (
      '/*** Styles for Live Preview Window ***/'
      ''
      '#livepreview_iframe {'
      '    box-shadow: inset 5px 5px 10px #666;'
      '    -moz-box-shadow: inset 5 5px 10px #666;'
      '    -webkit-box-shadow: inset 5 5px 10px #666;'
      '}'
      ''
      '#livepreview_dialog {'
      '    padding:0px;'
      '    height:200px;  '
      '    width:300px;'
      '    background-color:#fff;'
      '    background-image:url('#39'/images/icon_loading.gif'#39');'
      '    background-repeat:no-repeat;'
      '    background-position:center center;'
      '    position:absolute;'
      '    border:solid 5px #666;'
      '    border-radius:5px;'
      '    -moz-border-radius: 5px;'
      '    -webkit-border-radius:5px;'
      '}'
      ''
      '#livepreview_dialog:after, #livepreview_dialog:before {'
      '    border: solid transparent;'
      '    content: " ";'
      '    height: 0;'
      '    width: 0;'
      '    position: absolute;'
      '    pointer-events: none;'
      '}'
      ''
      
        '#livepreview_dialog.bottom:after, #livepreview_dialog.bottom:bef' +
        'ore {'
      '    bottom: 100%;'
      '    left: 50%;'
      '}'
      ''
      '#livepreview_dialog.bottom:after {'
      '    border-color: rgba(255, 255, 255, 0);'
      '    border-bottom-color: #ffffffff;'
      '    border-width: 20px; '
      '    margin-left: -20px;'
      '}'
      '#livepreview_dialog.bottom:before {'
      '    border-color: rgba(102, 102, 102, 0);'
      '    border-bottom-color: #666666;'
      '    border-width: 26px;'
      '    margin-left: -26px;'
      '}'
      ''
      '#livepreview_dialog.top:after, #livepreview_dialog.top:before {'
      '    top: 100%;'
      '    left: 50%;'
      '}'
      ''
      '#livepreview_dialog.top:after {'
      '    border-color: rgba(255, 255, 255, 0);'
      '    border-top-color: #ffffffff;'
      '    border-width: 20px;'
      '    margin-left: -20px;'
      '}'
      ''
      '#livepreview_dialog.top:before {'
      '    border-color: rgba(102, 102, 102, 0);'
      '    border-top-color: #666666;'
      '    border-width: 26px;'
      '    margin-left: -26px;'
      '}'
      ''
      
        '#livepreview_dialog.right:after, #livepreview_dialog.right:befor' +
        'e {'
      '    right: 100%;'
      '    top: 50%;'
      '}'
      ''
      '#livepreview_dialog.right:after {'
      '    border-color: rgba(255, 255, 255, 0);'
      '    border-right-color: #ffffffff;'
      '    border-width: 20px;'
      '    margin-top: -20px;'
      '}'
      ''
      '#livepreview_dialog.right:before {'
      '    border-color: rgba(102, 102, 102, 0);'
      '    border-right-color: #666666;'
      '    border-width: 26px;'
      '    margin-top: -26px;'
      '}'
      ''
      '#livepreview_dialog.left, #livepreview_dialog.left:before {'
      '    left: 100%;'
      '    top: 50%;'
      '}'
      ''
      '#livepreview_dialog.left:after {'
      '    border-color: rgba(255, 255, 255, 0);'
      '    border-left-color: #ffffffff;'
      '    border-width: 20px;'
      '    margin-top: -20px;'
      '}'
      ''
      '#livepreview_dialog.left:before {'
      '    border-color: rgba(102, 102, 102, 0);'
      '    border-left-color: #666666;'
      '    border-width: 26px;'
      '    margin-top: -26px;'
      '}')
    Left = 360
    Top = 240
  end
  object header: TDataSetPageProducer
    HTMLDoc.Strings = (
      '    <header>'
      '    <a name=top></a>'
      '    <form action=/regist?db=<#dbnum> method="post">'
      '      <table>'
      '        <tr><td>'
      
        '          <label><p>'#12362#21517#21069'</p><input name="name" class=name value=<' +
        '#cookie param=name>></label>'
      
        '          <label><p>'#12479#12452#12488#12523'</p><input name="title" class=title plac' +
        'eholder="'#12479#12452#12488#12523#12394#12375'." value=<#title>></label>'
      '          <input type="submit" value="'#36865#20449'">'
      '        </td></tr>'
      '        <tr><td>'
      '          <label><p>'#26412#25991'<span>'#24517#38920'</span><br></p>'
      
        '            <textarea style="font-size:1.75em" name="comment" co' +
        'ls=30'
      
        '                      required placeholder="'#12467#12513#12531#12488#12394#12393#12434#20837#21147#12375#12390#12367#12384#12373#12356'."><#' +
        'raw></textarea></label>'
      '        </td></tr>'
      '        <tr><td>'
      
        '          <label><p>'#12497#12473#12527#12540#12489'</p><input name="password" type="passwo' +
        'rd" placeholder="'#21066#38500#29992'" value=<#pass>>'
      
        '          </label> / <input type="checkbox" name="show" value="t' +
        'rue" <#check>><p>'#12503#12524#12499#12517#12540'</p>'
      '        </td></tr>'
      '        <tr><td>'
      
        '          <label><p>'#21512#35328#33865#12434#12402#12425#12364#12394#12391#20837#21147#12375#12390#12367#12384#12373#12356': genki <input name=aikotob' +
        'a type=text value=<#cookie param=aikotoba>></label>'
      '        </td></tr>'
      '      </table>'
      '    </form>'
      '    </header><#preview>')
    DataSet = DataModule1.FDTable1
    OnHTMLTag = headerHTMLTag
    Left = 240
    Top = 192
  end
  object login: TDataSetPageProducer
    HTMLDoc.Strings = (
      '<!DOCTYPE HTML>'
      '  <head>'
      '    <meta charset=utf-8>'
      '    <title>'#12525#12464#12452#12531'</title>'
      '  </head>'
      '  <body>'
      '<#pr>'
      '    <p style=text-align:center>'#31649#29702#32773#29992#12525#12464#12452#12531#30011#38754
      '</p>'
      '    <br>'
      '    <form action=/login method="post">'
      '    <p style=text-align:center>'
      '      <input type=text name=record value=<#database>>'
      '    '#9'  <input style=height:25px type="password" name="password">'
      '      <input type="submit" value="'#12525#12464#12452#12531'">'
      '    </p>'
      '    </form>'
      '      <p style=text-align:center><br><a href=/ >TOP'#12408#31227#21205'</a></p>'
      '  </body>'
      '</html>')
    DataSet = DataModule1.FDTable1
    OnHTMLTag = loginHTMLTag
    Left = 304
    Top = 144
  end
  object js1: TPageProducer
    HTMLDoc.Strings = (
      '$(function(){'
      #9'$('#39'.livepreview'#39').livePreview({position:'#39'top'#39'});'
      
        #9'$('#39'.minpreview'#39').livePreview({scale:1,viewWidth:900,viewHeight:' +
        '600});'
      #9
      #9'var $window = $(window),'
      #9#9'$header = $('#39'header'#39'),'
      #9#9'$button = $header.find('#39'button'#39'),'
      #9#9'$headerClone = $header.clone(),'
      
        #9#9'$headerCloneContainer = $('#39'<div class=clone style=position:fix' +
        'ed;width:100%></div>'#39'),'
      #9#9'$clonebutton = $headerCloneContainer.find('#39'button'#39'),'
      #9#9'headerOffsetTop = $header.offset().top,'
      #9#9'headerHeight = $header.outerHeight();'
      #9
      #9'$button.on('#39'click'#39',function(){'
      #9#9'if ($window.scrollTop() > headerOffsetTop){'
      #9#9#9'$headerCloneContainer'
      #9#9#9#9'.css({'
      #9#9#9#9#9'opacity:1,'
      #9#9#9#9#9'top:-$window.scrollTop()+headerOffsetTop'
      #9#9#9#9'})'#9#9#9#9
      #9#9#9#9'.animate({top:0},300)'
      #9#9#9#9'.find('#39'textarea'#39').val($header.find('#39'textarea'#39').val());'
      
        #9#9#9'$headerCloneContainer.find('#39'.name'#39').val($header.find('#39'.name'#39')' +
        '.val());'
      
        #9#9#9'$headerCloneContainer.find('#39'.title'#39').val($header.find('#39'.title' +
        #39').val());'
      #9#9#9'$header.addClass('#39'open'#39');'
      #9#9'};'
      #9'}).css({top:headerOffsetTop+headerHeight});'
      #9'$headerCloneContainer.append($headerClone);'
      #9'$headerCloneContainer.appendTo('#39'body'#39');'
      #9'$headerCloneContainer'
      #9#9'.css({'#39'opacity'#39':0})'
      #9#9'.find('#39'button'#39').text('#39'close'#39').on('#39'click'#39',function(){'#9#9#9
      #9#9#9'var wintop = $window.scrollTop();'#9#9#9#9
      ''
      
        #9#9#9'$header.find('#39'textarea'#39').val($headerCloneContainer.find('#39'text' +
        'area'#39').val());'
      #9#9#9'$headerCloneContainer'
      #9#9#9#9'.animate({top:-wintop+headerOffsetTop},300)'
      #9#9#9#9'.animate({opacity:0,top:-headerHeight},0);'
      
        #9#9#9'$header.find('#39'.name'#39').val($headerCloneContainer.find('#39'.name'#39')' +
        '.val());'
      
        #9#9#9'$header.find('#39'.title'#39').val($headerCloneContainer.find('#39'.title' +
        #39').val());'
      #9#9#9'$header.removeClass('#39'open'#39');'
      #9#9'});'
      #9'$window.on('#39'scroll'#39',function(){'
      #9#9'var wintop = $window.scrollTop();'
      #9#9
      #9#9'if ($header.hasClass('#39'open'#39')&&(wintop < headerOffsetTop)){'
      #9#9#9'$headerCloneContainer.css({opacity:0,top:-headerHeight});'
      #9#9#9'$header.removeClass('#39'open'#39');'
      #9#9#9'$window.trigger('#39'scroll'#39');'
      #9#9'};'
      #9#9'if (wintop > headerOffsetTop+headerHeight){'
      #9#9#9'$button.addClass('#39'sticky'#39').css({top:0});'
      #9#9'}else{'
      
        #9#9#9'$button.removeClass('#39'sticky'#39').css({top:headerOffsetTop+header' +
        'Height});'
      #9#9'};'
      #9'});'
      '});')
    Left = 304
    Top = 272
  end
  object js2: TPageProducer
    HTMLDoc.Strings = (
      '/* =========================================================='
      ' * jquery-live-preview.js v1.1.0'
      ' * https://github.com/alanphoon/jquery-live-preview'
      ' * =========================================================='
      ' * Copyright 2015 Alan Phoon, www.ampedupdesigns.com'
      ' * The MIT License'
      ' *'
      
        ' * Permission is hereby granted, free of charge, to any person o' +
        'btaining a copy'
      
        ' * of this software and associated documentation files (the "Sof' +
        'tware"), to deal'
      
        ' * in the Software without restriction, including without limita' +
        'tion the rights'
      
        ' * to use, copy, modify, merge, publish, distribute, sublicense,' +
        ' and/or sell'
      
        ' * copies of the Software, and to permit persons to whom the Sof' +
        'tware is'
      ' * furnished to do so, subject to the following conditions:'
      ' * '
      
        ' * The above copyright notice and this permission notice shall b' +
        'e included in'
      ' * all copies or substantial portions of the Software.'
      ' * '
      
        ' * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIN' +
        'D, EXPRESS OR'
      
        ' * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCH' +
        'ANTABILITY,'
      
        ' * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO E' +
        'VENT SHALL THE'
      
        ' * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES' +
        ' OR OTHER'
      
        ' * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWIS' +
        'E, ARISING FROM,'
      
        ' * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER' +
        ' DEALINGS IN'
      ' * THE SOFTWARE.'
      ' * ========================================================== */'
      ''
      '(function($) {'
      '  $.fn.extend({'
      '     livePreview: function(options) {'
      '         '
      '         var defaults = {'
      '             trigger: '#39'hover'#39','
      '             targetWidth : 1000,'
      '             targetHeight: 800,'
      '             viewWidth: 300,'
      '             viewHeight: 200,'
      '             position: '#39'right'#39','
      '             positionOffset: 40,'
      '         };'
      ''
      '         var options = $.extend(defaults, options);'
      '         //calculate appropriate scaling based on width.'
      
        '         var scale_w = (options.viewWidth / options.targetWidth)' +
        ';'
      
        '         var scale_h = (options.viewHeight / options.targetHeigh' +
        't);'
      '         var scale_f = 1;'
      '         var preview_id = '#39'livepreview_dialog'#39';'
      ''
      '         if(typeof options.scale != '#39'undefined'#39')'
      '             scale_f = options.scale;'
      '         else'
      '         {'
      '             if(scale_w > scale_h)'
      '                 scale_f = scale_w;'
      '             else'
      '                 scale_f = scale_h;'
      '         }'
      '         '
      '         var showPreview = function(event) {'
      '             var triggerType = event.data.triggerType;'
      '             var obj = event.data.target;'
      '             var href = event.data.href;'
      '             var s = event.data.scale;'
      '             '
      
        '             if( (triggerType == '#39'click'#39') && ($('#39'#'#39' + preview_id' +
        ').length == 0) ) {'
      '                 event.preventDefault();'
      '             }'
      ''
      '             var currentPos = options.position;'
      '              if(obj.attr("data-position"))'
      '                 currentPos = obj.attr("data-position");'
      ''
      '             var currentOffset = options.positionOffset;'
      '             if(obj.attr("data-positionOffset"))'
      
        '                 currentOffset = obj.attr("data-positionOffset")' +
        ';'
      ''
      '             if(obj.attr("data-scale"))'
      '                 s = obj.attr("data-scale");'
      ''
      '             var pos = $(this).offset();'
      '             var width = $(this).width();'
      '             var height = $(this).height();'
      '             var toppos = pos.top - (options.viewHeight/2);'
      '             var leftpos = pos.left + width + currentOffset;'
      ''
      '             if(currentPos == '#39'left'#39') {'
      
        '                leftpos = pos.left - options.viewWidth - current' +
        'Offset;'
      '             }'
      '            '
      '             if(currentPos == '#39'top'#39') {'
      
        '                leftpos = pos.left + (width/2) - (options.viewWi' +
        'dth/2);'
      
        '                toppos = pos.top - options.viewHeight - currentO' +
        'ffset;'
      '             }'
      ''
      '             if(currentPos == '#39'bottom'#39') {'
      
        '                leftpos = pos.left + (width/2) - (options.viewWi' +
        'dth/2);'
      '                toppos = pos.top + (height/2) + currentOffset;'
      '             }'
      '             '
      '             //hover on '
      
        '             $('#39'body'#39').append('#39'<div id="livepreview_dialog" clas' +
        's="'#39' + currentPos + '#39'" style="display:none; padding:0px; left: '#39 +
        ' + leftpos + '#39'px; top:'#39' + toppos + '#39'px; width: '#39' + options.viewW' +
        'idth + '#39'px; height: '#39' + options.viewHeight + '#39'px"><div class="li' +
        'vepreview-container" style="overflow:hidden; width: '#39' + options.' +
        'viewWidth + '#39'px; height: '#39' + options.viewHeight + '#39'px"><iframe i' +
        'd="livepreview_iframe" src="'#39' + href + '#39'" style="height:'#39' + opti' +
        'ons.targetHeight + '#39'px; width:'#39' + options.targetWidth + '#39'px;-moz' +
        '-transform: scale('#39'+ s + '#39');-moz-transform-origin: 0 0;-o-transf' +
        'orm: scale('#39'+ s + '#39');-o-transform-origin: 0 0;-webkit-transform:' +
        ' scale('#39'+ s + '#39');-webkit-transform-origin: 0 0;"></iframe></div>' +
        '</div>'#39');'
      '             $('#39'#'#39' + preview_id).fadeIn(100);'
      '         };'
      ''
      '         return this.each(function() {'
      '            var o = options;'
      '            var s = scale_f;'
      '            var obj = $(this);'
      
        '            var href = obj.attr("data-preview-url") || obj.attr(' +
        '"href");'
      '            var triggerType = options.trigger;'
      ''
      '            if(obj.attr("data-trigger")) {'
      '                triggerType = obj.attr("data-trigger");'
      '            }'
      ''
      '            if(triggerType != '#39'click'#39') {'
      '                triggerType = '#39'mouseenter'#39';'
      '                obj.on('#39'click'#39', function() {'
      '                    $('#39'#'#39' + preview_id).remove();'
      '                });'
      '            }'
      '            '
      
        '            obj.on(triggerType, null, { triggerType: triggerType' +
        ', target: obj, href: href, scale: s }, showPreview);'
      '            obj.on('#39'mouseleave'#39', function() {'
      '                $('#39'#'#39' + preview_id).remove();'
      '            });'
      ''
      '         });'
      '     }'
      '  });'
      '})(jQuery);')
    Left = 256
    Top = 272
  end
  object js3: TPageProducer
    HTMLDoc.Strings = (
      ''
      '$(function(){'
      #9'$('#39'.slideshow'#39').each(function(){'
      #9#9'var $container = $(this),'
      #9#9#9'$slideGroup = $container.find('#39'.slideshow-slides'#39'),'
      #9#9#9'$slides = $slideGroup.find('#39'.slide'#39'),'
      #9#9#9'$nav = $container.find('#39'.slideshow-nav'#39'),'
      #9#9#9'$indicator = $container.find('#39'.slideshow-indicator'#39'),'
      #9#9#9'$images = $slides.find('#39'img'#39'),'
      #9#9#9
      #9#9#9'slideCount = $slides.length,'
      #9#9#9'indicatorHTML = '#39#39','
      #9#9#9'currentIndex = 0,'
      #9#9#9'duration = 500,'
      #9#9#9'easing = '#39'easeInOutExpo'#39','
      #9#9#9'interval = 7500,'
      #9#9#9'timer;'
      #9#9#9#9
      #9#9
      #9#9'$slides.each(function(i){'
      #9#9#9'$(this).css({left:100*i+'#39'%'#39'});'
      #9#9#9'indicatorHTML += '#39'<a href="#">'#39'+(i+1)+'#39'</a>'#39';'
      #9#9'});'
      #9#9
      #9#9'$indicator.html(indicatorHTML);'
      #9#9
      #9#9'function goToSlide(index){'
      #9#9#9'$slideGroup.animate({left:-100*index+'#39'%'#39'},duration,easing);'
      #9#9#9'currentIndex = index;'
      #9#9#9'updateNav();'
      #9#9'}'
      #9#9
      #9#9'function updateNav(){'
      #9#9#9'var $navPrev = $nav.find('#39'.prev'#39'),'
      #9#9#9#9'$navNext = $nav.find('#39'.next'#39');'
      #9#9#9'if (currentIndex === 0){'
      #9#9#9#9'$navPrev.addClass('#39'disabled'#39');'
      #9#9#9'} else {'
      #9#9#9#9'$navPrev.removeClass('#39'disabled'#39');'
      #9#9#9'}'
      #9#9#9'if (currentIndex === slideCount-1){'
      #9#9#9#9'$navNext.addClass('#39'disabled'#39');'
      #9#9#9'} else {'
      #9#9#9#9'$navNext.removeClass('#39'disabled'#39');'
      #9#9#9'}'
      #9#9#9'$indicator.find('#39'a'#39').removeClass('#39'active'#39')'
      #9#9#9#9'.eq(currentIndex).addClass('#39'active'#39');'
      #9#9'}'
      ''
      #9#9'function startTimer(){'
      #9#9'    timer = setInterval(function(){'
      #9'            var nextIndex = (currentIndex + 1) % slideCount;'
      #9'            goToSlide(nextIndex);'
      '            }, interval)'
      #9#9'}'
      ''
      #9#9'function stopTimer(){'
      #9#9'    clearInterval(timer);'
      #9#9'}'
      #9#9#9
      #9#9'$nav.on('#39'click'#39','#39'a'#39',function(event){'
      #9#9#9'event.preventDefault();'
      #9#9#9'if ($(this).hasClass('#39'prev'#39')){'
      #9#9#9#9'goToSlide(currentIndex-1);'
      #9#9#9'} else {'
      #9#9#9#9'goToSlide(currentIndex+1);'
      #9#9#9'}'
      #9#9'});'
      #9#9
      #9#9'$indicator.on('#39'click'#39','#39'a'#39',function(event){'
      #9#9#9'event.preventDefault();'
      #9#9#9'if (!$(this).hasClass('#39'active'#39')){'
      #9#9#9#9'goToSlide($(this).index());'
      #9#9#9'}'
      #9#9'});'
      ''
      #9#9'$container.on({'
      #9#9'    mouseenter: stopTimer,'
      #9#9'    mouseleave: startTimer'
      #9#9'});'
      ''
      #9#9#9
      #9#9'goToSlide(currentIndex);'
      ''
      #9#9'startTimer();'
      #9#9
      #9'});'
      #9
      '});')
    Left = 200
    Top = 272
  end
  object js4: TPageProducer
    HTMLDoc.Strings = (
      '/* Modernizr 2.6.2 (Custom Build) | MIT & BSD'
      ' * Build: http://modernizr.com/download/#-shiv-cssclasses'
      ' */'
      
        ';window.Modernizr=function(a,b,c){function u(a){j.cssText=a}func' +
        'tion v(a,b){return u(prefixes.join(a+";")+(b||""))}function w(a,' +
        'b){return typeof a===b}function x(a,b){return!!~(""+a).indexOf(b' +
        ')}function y(a,b,d){for(var e in a){var f=b[a[e]];if(f!==c)retur' +
        'n d===!1?a[e]:w(f,"function")?f.bind(d||b):f}return!1}var d="2.6' +
        '.2",e={},f=!0,g=b.documentElement,h="modernizr",i=b.createElemen' +
        't(h),j=i.style,k,l={}.toString,m={},n={},o={},p=[],q=p.slice,r,s' +
        '={}.hasOwnProperty,t;!w(s,"undefined")&&!w(s.call,"undefined")?t' +
        '=function(a,b){return s.call(a,b)}:t=function(a,b){return b in a' +
        '&&w(a.constructor.prototype[b],"undefined")},Function.prototype.' +
        'bind||(Function.prototype.bind=function(b){var c=this;if(typeof ' +
        'c!="function")throw new TypeError;var d=q.call(arguments,1),e=fu' +
        'nction(){if(this instanceof e){var a=function(){};a.prototype=c.' +
        'prototype;var f=new a,g=c.apply(f,d.concat(q.call(arguments)));r' +
        'eturn Object(g)===g?g:f}return c.apply(b,d.concat(q.call(argumen' +
        'ts)))};return e});for(var z in m)t(m,z)&&(r=z.toLowerCase(),e[r]' +
        '=m[z](),p.push((e[r]?"":"no-")+r));return e.addTest=function(a,b' +
        '){if(typeof a=="object")for(var d in a)t(a,d)&&e.addTest(d,a[d])' +
        ';else{a=a.toLowerCase();if(e[a]!==c)return e;b=typeof b=="functi' +
        'on"?b():b,typeof f!="undefined"&&f&&(g.className+=" "+(b?"":"no-' +
        '")+a),e[a]=b}return e},u(""),i=k=null,function(a,b){function k(a' +
        ',b){var c=a.createElement("p"),d=a.getElementsByTagName("head")[' +
        '0]||a.documentElement;return c.innerHTML="x<style>"+b+"</style>"' +
        ',d.insertBefore(c.lastChild,d.firstChild)}function l(){var a=r.e' +
        'lements;return typeof a=="string"?a.split(" "):a}function m(a){v' +
        'ar b=i[a[g]];return b||(b={},h++,a[g]=h,i[h]=b),b}function n(a,c' +
        ',f){c||(c=b);if(j)return c.createElement(a);f||(f=m(c));var g;re' +
        'turn f.cache[a]?g=f.cache[a].cloneNode():e.test(a)?g=(f.cache[a]' +
        '=f.createElem(a)).cloneNode():g=f.createElem(a),g.canHaveChildre' +
        'n&&!d.test(a)?f.frag.appendChild(g):g}function o(a,c){a||(a=b);i' +
        'f(j)return a.createDocumentFragment();c=c||m(a);var d=c.frag.clo' +
        'neNode(),e=0,f=l(),g=f.length;for(;e<g;e++)d.createElement(f[e])' +
        ';return d}function p(a,b){b.cache||(b.cache={},b.createElem=a.cr' +
        'eateElement,b.createFrag=a.createDocumentFragment,b.frag=b.creat' +
        'eFrag()),a.createElement=function(c){return r.shivMethods?n(c,a,' +
        'b):b.createElem(c)},a.createDocumentFragment=Function("h,f","ret' +
        'urn function(){var n=f.cloneNode(),c=n.createElement;h.shivMetho' +
        'ds&&("+l().join().replace(/\w+/g,function(a){return b.createElem' +
        '(a),b.frag.createElement(a),'#39'c("'#39'+a+'#39'")'#39'})+");return n}")(r,b.fr' +
        'ag)}function q(a){a||(a=b);var c=m(a);return r.shivCSS&&!f&&!c.h' +
        'asCSS&&(c.hasCSS=!!k(a,"article,aside,figcaption,figure,footer,h' +
        'eader,hgroup,nav,section{display:block}mark{background:#FF0;colo' +
        'r:#000}")),j||p(a,c),a}var c=a.html5||{},d=/^<|^(?:button|map|se' +
        'lect|textarea|object|iframe|option|optgroup)$/i,e=/^(?:a|b|code|' +
        'div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|sty' +
        'le|table|tbody|td|th|tr|ul)$/i,f,g="_html5shiv",h=0,i={},j;(func' +
        'tion(){try{var a=b.createElement("a");a.innerHTML="<xyz></xyz>",' +
        'f="hidden"in a,j=a.childNodes.length==1||function(){b.createElem' +
        'ent("a");var a=b.createDocumentFragment();return typeof a.cloneN' +
        'ode=="undefined"||typeof a.createDocumentFragment=="undefined"||' +
        'typeof a.createElement=="undefined"}()}catch(c){f=!0,j=!0}})();v' +
        'ar r={elements:c.elements||"abbr article aside audio bdi canvas ' +
        'data datalist details figcaption figure footer header hgroup mar' +
        'k meter nav output progress section summary time video",shivCSS:' +
        'c.shivCSS!==!1,supportsUnknownElements:j,shivMethods:c.shivMetho' +
        'ds!==!1,type:"default",shivDocument:q,createElement:n,createDocu' +
        'mentFragment:o};a.html5=r,q(b)}(this,b),e._version=d,g.className' +
        '=g.className.replace(/(^|\s)no-js(\s|$)/,"$1$2")+(f?" js "+p.joi' +
        'n(" "):""),e}(this,this.document);')
    Left = 152
    Top = 272
  end
  object adhead: TPageProducer
    HTMLDoc.Strings = (
      '<#pr>'
      '<form method=post action=/adminset style=text-align:center>'
      '    <label><p>'#12497#12473#12527#12540#12489#12398#22793#26356
      
        '      <input type="password" style="HEIGHT: 23px; WIDTH: 85px" n' +
        'ame="pass">'
      '      </p>'
      '    </label>'
      '    <p>'
      
        '    <input type="checkbox" value="on" name="mente" <#mente>>'#12513#12531#12486#12490 +
        #12531#12473#34920#31034'</p>'
      '    <p><input type="submit" value="'#22793#26356'"></p>'
      '    <p><a href="/logout?db=<#database>">'#12525#12464#12450#12454#12488'</a></p>'
      '</form>'
      '<form action=/admindel method=post style=text-align:center>')
    OnHTMLTag = adheadHTMLTag
    Left = 176
    Top = 88
  end
  object js5: TPageProducer
    HTMLDoc.Strings = (
      ''
      '$(function(){'
      #9'$('#39'div'#39').on('#39'click'#39',function(){'
      #9#9'var $title = $(this),'
      #9#9#9'span1 = 1500,'
      #9#9#9'span2 = 200;'
      #9#9'$title.css('#39'font-size'#39','#39'2em'#39');'
      #9#9'$({deg:5}).animate({deg:365},{'
      #9#9#9'duration:500,'
      #9#9#9'progress:function(){'
      #9#9#9#9'$title.css({'
      #9#9#9#9#9#39'-webkit-transform'#39':'#39'rotate('#39'+this.deg+'#39'deg)'#39','
      #9#9#9#9#9#39'-ms-transform'#39':'#39'rotate('#39'+this.deg+'#39'deg)'#39','
      #9#9#9#9#9#39'ransform'#39':'#39'rotate('#39'+this.deg+'#39'deg)'#39
      #9#9#9#9'});'
      #9#9#9'}'
      #9#9'});'
      #9#9'$({deg:5}).delay(span1).animate({deg:0},{'
      #9#9#9'duration:span2,'
      #9#9#9'progress:function(){'
      #9#9#9#9'$title.css({'#9
      #9#9#9#9#9#39'-webkit-transform'#39':'#39'rotate('#39'+this.deg+'#39'deg)'#39','
      #9#9#9#9#9#39'-ms-transform'#39':'#39'rotate('#39'+this.deg+'#39'deg)'#39','
      #9#9#9#9#9#39'transform'#39':'#39'rotate('#39'+this.deg+'#39'deg)'#39
      #9#9#9#9'});'
      #9#9#9'}'
      #9#9'});'
      #9#9'$title.delay(span1+span2).animate({'#39'font-size'#39':'#39'1em'#39'},1);'
      #9'});'
      '});'
      '')
    Left = 104
    Top = 272
  end
  object title: TPageProducer
    HTMLDoc.Strings = (
      '<!doctype html>'
      '<html>'
      '<head>'
      '<meta charset=utf-8>'
      '<title>'#12479#12452#12488#12523#34920#31034'</title>'
      
        '<script type="text/javascript" src="//ajax.googleapis.com/ajax/l' +
        'ibs/jquery/2.1.4/jquery.min.js"></script>'
      
        '<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqu' +
        'eryui/1.10.4/themes/smoothness/jquery-ui.css" />'
      
        '<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jqu' +
        'ery-ui.min.js"></script>'
      '<script>'
      '<!--'
      '<#js id=5>'
      '-->'
      '</script>'
      '</head>'
      '<body>'
      '<#pr>'
      '<#main>'
      '<p style=text-align:center><a href=/>'#25147#12427'</a>'
      '</body>'
      '</html>')
    OnHTMLTag = titleHTMLTag
    Left = 48
    Top = 256
  end
  object ti: TDataSetPageProducer
    HTMLDoc.Strings = (
      '<p style=font-weight:bold><#database>'#8595'</p>'
      '<div>'#12479#12452#12488#12523': '#39'<#title> , '#35352#20107#25968': <#count> , '#26356#26032#26178#21051': <#date></div><p>'
      '')
    OnHTMLTag = tiHTMLTag
    Left = 48
    Top = 320
  end
end
