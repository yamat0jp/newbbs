object TWebModule1: TTWebModule1
  OldCreateOrder = False
  OnCreate = WebModuleCreate
  Actions = <
    item
      MethodType = mtGet
      Name = 'top'
      PathInfo = '/'
      OnAction = TWebModule1topAction
    end
    item
      MethodType = mtGet
      Name = 'indexpage'
      PathInfo = '/index'
      OnAction = TWebModule1indexpageAction
    end
    item
      MethodType = mtPost
      Name = 'regist'
      PathInfo = '/regist'
      OnAction = TWebModule1registAction
    end
    item
      MethodType = mtGet
      Name = 'admin'
      PathInfo = '/admin'
      OnAction = TWebModule1adminAction
    end
    item
      Name = 'search'
      PathInfo = '/search'
      OnAction = TWebModule1searchAction
    end
    item
      Name = 'help'
      PathInfo = '/help'
      OnAction = TWebModule1helpAction
    end
    item
      Name = 'master'
      PathInfo = '/master'
      OnAction = TWebModule1masterAction
    end
    item
      Name = 'alert'
      PathInfo = '/alert'
      OnAction = TWebModule1alertAction
    end
    item
      MethodType = mtPost
      Name = 'usrdel'
      PathInfo = '/userdel'
      OnAction = TWebModule1deleteAction
    end
    item
      Name = 'jump'
      PathInfo = '/jump'
      OnAction = TWebModule1jumpAction
    end
    item
      MethodType = mtGet
      Name = 'link'
      PathInfo = '/link'
      OnAction = TWebModule1linkAction
    end
    item
      MethodType = mtPost
      Name = 'admdel'
      PathInfo = '/admindel'
      OnAction = TWebModule1admdelAction
    end
    item
      Name = 'login'
      PathInfo = '/login'
      OnAction = TWebModule1loginAction
    end
    item
      MethodType = mtPost
      Name = 'adminset'
      PathInfo = '/adminset'
      OnAction = TWebModule1adminsetAction
    end
    item
      MethodType = mtGet
      Name = 'logout'
      PathInfo = '/logout'
      OnAction = TWebModule1logoutAction
    end
    item
      MethodType = mtGet
      Name = 'img'
      PathInfo = '/src'
      OnAction = TWebModule1imgAction
    end
    item
      MethodType = mtGet
      Name = 'file'
      PathInfo = '/file'
      OnAction = TWebModule1fileAction
    end>
  Height = 353
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
      ''
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
      '<input type=submit value='#21066#38500#12377#12427'><input type=submit value='#12522#12475#12483#12488'>'
      '</form>'
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
    Left = 304
    Top = 32
  end
  object top: TPageProducer
    HTMLDoc.Strings = (
      '<!doctype html>'
      '<html lang="ja">'
      '<head>'
      #9'<title>Top Page</title>'
      '<style type="text/css">'
      '<!--'
      '<#css id=1 ref=top>'
      '<#css id=3 ref=normal>'
      '-->'
      '</style>'
      '<script src=/file?tyle=js&id=3></script>'
      '<script src=/file?tyle=js&id=4></script>'
      '<script src=/file?tyle=js&id=5></script>'
      '<script src=/file?tyle=js&id=6></script>'
      '<script src=/file?tyle=js&id=7></script>'
      '</head>'
      '<body>'
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
      #9'<div class="slideshow-indicator"></div>'
      '        </div>'
      '</div>'
      
        '        <p>[ <a href=/index?db=<#info>><#info></a> ] ='#12362#30693#12425#12379' <p>[ ' +
        '<a href="/master">master'
      
        '</a> ] ='#31649#29702#20154'<div class="fb-like" data-href="http://pybbs.herokuap' +
        'p.com" data-layout="box_count" data-action="like" data-size="sma' +
        'll" data-show-faces="true" data-share="false"></div>'
      
        '<p><a href="http://www.xn--gckj5d1ktb3488cn4q.jp/" target="_blan' +
        'k"><img alt="'#28961#26009#12459#12454#12531#12479#12540'" src="http://www.xn--gckj5d1ktb3488cn4q.jp/' +
        'counter.php?id=pybbs" border="0"></a>'
      '<footer>'
      '<p><br>'
      '<p><a href="/title">'#12479#12452#12488#12523#34920#31034
      '</a>'
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
      '<form action=/master method=post>'
      '<p><#request>'
      '<input type=radio name=delete value=some checked>'#21066#38500#28168#12415#12434#28040#21435#12288
      '<input type=radio name=delete value=all>'#12377#12409#12390#28040#21435
      '<input type=submit value="'#36865#20449'">'
      '</form>'
      '<p style=text-align:center><a href=/>'#25147#12427'</a>'
      '</body></html>')
    OnHTMLTag = masterHTMLTag
    Left = 48
    Top = 144
  end
  object alert: TDataSetPageProducer
    HTMLDoc.Strings = (
      '<tr><td>'
      '<p><a href=/jump?db=<#dbname>&num=<#posnum>>'
      '    [ <#dbname>-<#posnum> ]</a><#date>'
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
      #9'content:url(/src?name=sprites.png);'
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
      
        '/*! jQuery v1.10.2 | (c) 2005, 2013 jQuery Foundation, Inc. | jq' +
        'uery.org/license'
      '//@ sourceMappingURL=jquery-1.10.2.min.map'
      '*/'
      
        '(function(e,t){var n,r,i=typeof t,o=e.location,a=e.document,s=a.' +
        'documentElement,l=e.jQuery,u=e.$,c={},p=[],f="1.10.2",d=p.concat' +
        ',h=p.push,g=p.slice,m=p.indexOf,y=c.toString,v=c.hasOwnProperty,' +
        'b=f.trim,x=function(e,t){return new x.fn.init(e,t,r)},w=/[+-]?(?' +
        ':\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,T=/\S+/g,C=/^[\s\uFEFF\xA0]' +
        '+|[\s\uFEFF\xA0]+$/g,N=/^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]*))$/,k=/' +
        '^<(\w+)\s*\/?>(?:<\/\1>|)$/,E=/^[\],:{}\s]*$/,S=/(?:^|:|,)(?:\s*' +
        '\[)+/g,A=/\\(?:["\\\/bfnrt]|u[\da-fA-F]{4})/g,j=/"[^"\\\r\n]*"|t' +
        'rue|false|null|-?(?:\d+\.|)\d+(?:[eE][+-]?\d+|)/g,D=/^-ms-/,L=/-' +
        '([\da-z])/gi,H=function(e,t){return t.toUpperCase()},q=function(' +
        'e){(a.addEventListener||"load"===e.type||"complete"===a.readySta' +
        'te)&&(_(),x.ready())},_=function(){a.addEventListener?(a.removeE' +
        'ventListener("DOMContentLoaded",q,!1),e.removeEventListener("loa' +
        'd",q,!1)):(a.detachEvent("onreadystatechange",q),e.detachEvent("' +
        'onload",q))};x.fn=x.prototype={jquery:f,constructor:x,init:funct' +
        'ion(e,n,r){var i,o;if(!e)return this;if("string"==typeof e){if(i' +
        '="<"===e.charAt(0)&&">"===e.charAt(e.length-1)&&e.length>=3?[nul' +
        'l,e,null]:N.exec(e),!i||!i[1]&&n)return!n||n.jquery?(n||r).find(' +
        'e):this.constructor(n).find(e);if(i[1]){if(n=n instanceof x?n[0]' +
        ':n,x.merge(this,x.parseHTML(i[1],n&&n.nodeType?n.ownerDocument||' +
        'n:a,!0)),k.test(i[1])&&x.isPlainObject(n))for(i in n)x.isFunctio' +
        'n(this[i])?this[i](n[i]):this.attr(i,n[i]);return this}if(o=a.ge' +
        'tElementById(i[2]),o&&o.parentNode){if(o.id!==i[2])return r.find' +
        '(e);this.length=1,this[0]=o}return this.context=a,this.selector=' +
        'e,this}return e.nodeType?(this.context=this[0]=e,this.length=1,t' +
        'his):x.isFunction(e)?r.ready(e):(e.selector!==t&&(this.selector=' +
        'e.selector,this.context=e.context),x.makeArray(e,this))},selecto' +
        'r:"",length:0,toArray:function(){return g.call(this)},get:functi' +
        'on(e){return null==e?this.toArray():0>e?this[this.length+e]:this' +
        '[e]},pushStack:function(e){var t=x.merge(this.constructor(),e);r' +
        'eturn t.prevObject=this,t.context=this.context,t},each:function(' +
        'e,t){return x.each(this,e,t)},ready:function(e){return x.ready.p' +
        'romise().done(e),this},slice:function(){return this.pushStack(g.' +
        'apply(this,arguments))},first:function(){return this.eq(0)},last' +
        ':function(){return this.eq(-1)},eq:function(e){var t=this.length' +
        ',n=+e+(0>e?t:0);return this.pushStack(n>=0&&t>n?[this[n]]:[])},m' +
        'ap:function(e){return this.pushStack(x.map(this,function(t,n){re' +
        'turn e.call(t,n,t)}))},end:function(){return this.prevObject||th' +
        'is.constructor(null)},push:h,sort:[].sort,splice:[].splice},x.fn' +
        '.init.prototype=x.fn,x.extend=x.fn.extend=function(){var e,n,r,i' +
        ',o,a,s=arguments[0]||{},l=1,u=arguments.length,c=!1;for("boolean' +
        '"==typeof s&&(c=s,s=arguments[1]||{},l=2),"object"==typeof s||x.' +
        'isFunction(s)||(s={}),u===l&&(s=this,--l);u>l;l++)if(null!=(o=ar' +
        'guments[l]))for(i in o)e=s[i],r=o[i],s!==r&&(c&&r&&(x.isPlainObj' +
        'ect(r)||(n=x.isArray(r)))?(n?(n=!1,a=e&&x.isArray(e)?e:[]):a=e&&' +
        'x.isPlainObject(e)?e:{},s[i]=x.extend(c,a,r)):r!==t&&(s[i]=r));r' +
        'eturn s},x.extend({expando:"jQuery"+(f+Math.random()).replace(/\' +
        'D/g,""),noConflict:function(t){return e.$===x&&(e.$=u),t&&e.jQue' +
        'ry===x&&(e.jQuery=l),x},isReady:!1,readyWait:1,holdReady:functio' +
        'n(e){e?x.readyWait++:x.ready(!0)},ready:function(e){if(e===!0?!-' +
        '-x.readyWait:!x.isReady){if(!a.body)return setTimeout(x.ready);x' +
        '.isReady=!0,e!==!0&&--x.readyWait>0||(n.resolveWith(a,[x]),x.fn.' +
        'trigger&&x(a).trigger("ready").off("ready"))}},isFunction:functi' +
        'on(e){return"function"===x.type(e)},isArray:Array.isArray||funct' +
        'ion(e){return"array"===x.type(e)},isWindow:function(e){return nu' +
        'll!=e&&e==e.window},isNumeric:function(e){return!isNaN(parseFloa' +
        't(e))&&isFinite(e)},type:function(e){return null==e?e+"":"object' +
        '"==typeof e||"function"==typeof e?c[y.call(e)]||"object":typeof ' +
        'e},isPlainObject:function(e){var n;if(!e||"object"!==x.type(e)||' +
        'e.nodeType||x.isWindow(e))return!1;try{if(e.constructor&&!v.call' +
        '(e,"constructor")&&!v.call(e.constructor.prototype,"isPrototypeO' +
        'f"))return!1}catch(r){return!1}if(x.support.ownLast)for(n in '
      
        'e)return v.call(e,n);for(n in e);return n===t||v.call(e,n)},isEm' +
        'ptyObject:function(e){var t;for(t in e)return!1;return!0},error:' +
        'function(e){throw Error(e)},parseHTML:function(e,t,n){if(!e||"st' +
        'ring"!=typeof e)return null;"boolean"==typeof t&&(n=t,t=!1),t=t|' +
        '|a;var r=k.exec(e),i=!n&&[];return r?[t.createElement(r[1])]:(r=' +
        'x.buildFragment([e],t,i),i&&x(i).remove(),x.merge([],r.childNode' +
        's))},parseJSON:function(n){return e.JSON&&e.JSON.parse?e.JSON.pa' +
        'rse(n):null===n?n:"string"==typeof n&&(n=x.trim(n),n&&E.test(n.r' +
        'eplace(A,"@").replace(j,"]").replace(S,"")))?Function("return "+' +
        'n)():(x.error("Invalid JSON: "+n),t)},parseXML:function(n){var r' +
        ',i;if(!n||"string"!=typeof n)return null;try{e.DOMParser?(i=new ' +
        'DOMParser,r=i.parseFromString(n,"text/xml")):(r=new ActiveXObjec' +
        't("Microsoft.XMLDOM"),r.async="false",r.loadXML(n))}catch(o){r=t' +
        '}return r&&r.documentElement&&!r.getElementsByTagName("parsererr' +
        'or").length||x.error("Invalid XML: "+n),r},noop:function(){},glo' +
        'balEval:function(t){t&&x.trim(t)&&(e.execScript||function(t){e.e' +
        'val.call(e,t)})(t)},camelCase:function(e){return e.replace(D,"ms' +
        '-").replace(L,H)},nodeName:function(e,t){return e.nodeName&&e.no' +
        'deName.toLowerCase()===t.toLowerCase()},each:function(e,t,n){var' +
        ' r,i=0,o=e.length,a=M(e);if(n){if(a){for(;o>i;i++)if(r=t.apply(e' +
        '[i],n),r===!1)break}else for(i in e)if(r=t.apply(e[i],n),r===!1)' +
        'break}else if(a){for(;o>i;i++)if(r=t.call(e[i],i,e[i]),r===!1)br' +
        'eak}else for(i in e)if(r=t.call(e[i],i,e[i]),r===!1)break;return' +
        ' e},trim:b&&!b.call("\ufeff\u00a0")?function(e){return null==e?"' +
        '":b.call(e)}:function(e){return null==e?"":(e+"").replace(C,"")}' +
        ',makeArray:function(e,t){var n=t||[];return null!=e&&(M(Object(e' +
        '))?x.merge(n,"string"==typeof e?[e]:e):h.call(n,e)),n},inArray:f' +
        'unction(e,t,n){var r;if(t){if(m)return m.call(t,e,n);for(r=t.len' +
        'gth,n=n?0>n?Math.max(0,r+n):n:0;r>n;n++)if(n in t&&t[n]===e)retu' +
        'rn n}return-1},merge:function(e,n){var r=n.length,i=e.length,o=0' +
        ';if("number"==typeof r)for(;r>o;o++)e[i++]=n[o];else while(n[o]!' +
        '==t)e[i++]=n[o++];return e.length=i,e},grep:function(e,t,n){var ' +
        'r,i=[],o=0,a=e.length;for(n=!!n;a>o;o++)r=!!t(e[o],o),n!==r&&i.p' +
        'ush(e[o]);return i},map:function(e,t,n){var r,i=0,o=e.length,a=M' +
        '(e),s=[];if(a)for(;o>i;i++)r=t(e[i],i,n),null!=r&&(s[s.length]=r' +
        ');else for(i in e)r=t(e[i],i,n),null!=r&&(s[s.length]=r);return ' +
        'd.apply([],s)},guid:1,proxy:function(e,n){var r,i,o;return"strin' +
        'g"==typeof n&&(o=e[n],n=e,e=o),x.isFunction(e)?(r=g.call(argumen' +
        'ts,2),i=function(){return e.apply(n||this,r.concat(g.call(argume' +
        'nts)))},i.guid=e.guid=e.guid||x.guid++,i):t},access:function(e,n' +
        ',r,i,o,a,s){var l=0,u=e.length,c=null==r;if("object"===x.type(r)' +
        '){o=!0;for(l in r)x.access(e,n,l,r[l],!0,a,s)}else if(i!==t&&(o=' +
        '!0,x.isFunction(i)||(s=!0),c&&(s?(n.call(e,i),n=null):(c=n,n=fun' +
        'ction(e,t,n){return c.call(x(e),n)})),n))for(;u>l;l++)n(e[l],r,s' +
        '?i:i.call(e[l],l,n(e[l],r)));return o?e:c?n.call(e):u?n(e[0],r):' +
        'a},now:function(){return(new Date).getTime()},swap:function(e,t,' +
        'n,r){var i,o,a={};for(o in t)a[o]=e.style[o],e.style[o]=t[o];i=n' +
        '.apply(e,r||[]);for(o in t)e.style[o]=a[o];return i}}),x.ready.p' +
        'romise=function(t){if(!n)if(n=x.Deferred(),"complete"===a.readyS' +
        'tate)setTimeout(x.ready);else if(a.addEventListener)a.addEventLi' +
        'stener("DOMContentLoaded",q,!1),e.addEventListener("load",q,!1);' +
        'else{a.attachEvent("onreadystatechange",q),e.attachEvent("onload' +
        '",q);var r=!1;try{r=null==e.frameElement&&a.documentElement}catc' +
        'h(i){}r&&r.doScroll&&function o(){if(!x.isReady){try{r.doScroll(' +
        '"left")}catch(e){return setTimeout(o,50)}_(),x.ready()}}()}retur' +
        'n n.promise(t)},x.each("Boolean Number String Function Array Dat' +
        'e RegExp Object Error".split(" "),function(e,t){c["[object "+t+"' +
        ']"]=t.toLowerCase()});function M(e){var t=e.length,n=x.type(e);r' +
        'eturn x.isWindow(e)?!1:1===e.nodeType&&t?!0:"array"===n||"functi' +
        'on"!==n&&(0===t||"number"==typeof t&&t>0&&t-1 in e)}r=x(a),funct' +
        'ion(e,t){var n,r,i,o,a,s,l,u,c,p,f,d,h,g,m,y,v,b="sizzle"+-new D' +
        'ate,w=e.document,T=0,C=0,N=st(),k=st(),E=st(),S=!1,A=function(e,' +
        't){return e===t?(S=!0,0):0},j=typeof t,D=1'
      
        '<<31,L={}.hasOwnProperty,H=[],q=H.pop,_=H.push,M=H.push,O=H.slic' +
        'e,F=H.indexOf||function(e){var t=0,n=this.length;for(;n>t;t++)if' +
        '(this[t]===e)return t;return-1},B="checked|selected|async|autofo' +
        'cus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|' +
        'open|readonly|required|scoped",P="[\\x20\\t\\r\\n\\f]",R="(?:\\\' +
        '\.|[\\w-]|[^\\x00-\\xa0])+",W=R.replace("w","w#"),$="\\["+P+"*("' +
        '+R+")"+P+"*(?:([*^$|!~]?=)"+P+"*(?:(['#39'\"])((?:\\\\.|[^\\\\])*?)\' +
        '\3|("+W+")|)|)"+P+"*\\]",I=":("+R+")(?:\\(((['#39'\"])((?:\\\\.|[^\\' +
        '\\])*?)\\3|((?:\\\\.|[^\\\\()[\\]]|"+$.replace(3,8)+")*)|.*)\\)|' +
        ')",z=RegExp("^"+P+"+|((?:^|[^\\\\])(?:\\\\.)*)"+P+"+$","g"),X=Re' +
        'gExp("^"+P+"*,"+P+"*"),U=RegExp("^"+P+"*([>+~]|"+P+")"+P+"*"),V=' +
        'RegExp(P+"*[+~]"),Y=RegExp("="+P+"*([^\\]'#39'\"]*)"+P+"*\\]","g"),J' +
        '=RegExp(I),G=RegExp("^"+W+"$"),Q={ID:RegExp("^#("+R+")"),CLASS:R' +
        'egExp("^\\.("+R+")"),TAG:RegExp("^("+R.replace("w","w*")+")"),AT' +
        'TR:RegExp("^"+$),PSEUDO:RegExp("^"+I),CHILD:RegExp("^:(only|firs' +
        't|last|nth|nth-last)-(child|of-type)(?:\\("+P+"*(even|odd|(([+-]' +
        '|)(\\d*)n|)"+P+"*(?:([+-]|)"+P+"*(\\d+)|))"+P+"*\\)|)","i"),bool' +
        ':RegExp("^(?:"+B+")$","i"),needsContext:RegExp("^"+P+"*[>+~]|:(e' +
        'ven|odd|eq|gt|lt|nth|first|last)(?:\\("+P+"*((?:-\\d)?\\d*)"+P+"' +
        '*\\)|)(?=[^-]|$)","i")},K=/^[^{]+\{\s*\[native \w/,Z=/^(?:#([\w-' +
        ']+)|(\w+)|\.([\w-]+))$/,et=/^(?:input|select|textarea|button)$/i' +
        ',tt=/^h\d$/i,nt=/'#39'|\\/g,rt=RegExp("\\\\([\\da-f]{1,6}"+P+"?|("+P' +
        '+")|.)","ig"),it=function(e,t,n){var r="0x"+t-65536;return r!==r' +
        '||n?t:0>r?String.fromCharCode(r+65536):String.fromCharCode(55296' +
        '|r>>10,56320|1023&r)};try{M.apply(H=O.call(w.childNodes),w.child' +
        'Nodes),H[w.childNodes.length].nodeType}catch(ot){M={apply:H.leng' +
        'th?function(e,t){_.apply(e,O.call(t))}:function(e,t){var n=e.len' +
        'gth,r=0;while(e[n++]=t[r++]);e.length=n-1}}}function at(e,t,n,i)' +
        '{var o,a,s,l,u,c,d,m,y,x;if((t?t.ownerDocument||t:w)!==f&&p(t),t' +
        '=t||f,n=n||[],!e||"string"!=typeof e)return n;if(1!==(l=t.nodeTy' +
        'pe)&&9!==l)return[];if(h&&!i){if(o=Z.exec(e))if(s=o[1]){if(9===l' +
        '){if(a=t.getElementById(s),!a||!a.parentNode)return n;if(a.id===' +
        's)return n.push(a),n}else if(t.ownerDocument&&(a=t.ownerDocument' +
        '.getElementById(s))&&v(t,a)&&a.id===s)return n.push(a),n}else{if' +
        '(o[2])return M.apply(n,t.getElementsByTagName(e)),n;if((s=o[3])&' +
        '&r.getElementsByClassName&&t.getElementsByClassName)return M.app' +
        'ly(n,t.getElementsByClassName(s)),n}if(r.qsa&&(!g||!g.test(e))){' +
        'if(m=d=b,y=t,x=9===l&&e,1===l&&"object"!==t.nodeName.toLowerCase' +
        '()){c=mt(e),(d=t.getAttribute("id"))?m=d.replace(nt,"\\$&"):t.se' +
        'tAttribute("id",m),m="[id='#39'"+m+"'#39'] ",u=c.length;while(u--)c[u]=m' +
        '+yt(c[u]);y=V.test(e)&&t.parentNode||t,x=c.join(",")}if(x)try{re' +
        'turn M.apply(n,y.querySelectorAll(x)),n}catch(T){}finally{d||t.r' +
        'emoveAttribute("id")}}}return kt(e.replace(z,"$1"),t,n,i)}functi' +
        'on st(){var e=[];function t(n,r){return e.push(n+=" ")>o.cacheLe' +
        'ngth&&delete t[e.shift()],t[n]=r}return t}function lt(e){return ' +
        'e[b]=!0,e}function ut(e){var t=f.createElement("div");try{return' +
        '!!e(t)}catch(n){return!1}finally{t.parentNode&&t.parentNode.remo' +
        'veChild(t),t=null}}function ct(e,t){var n=e.split("|"),r=e.lengt' +
        'h;while(r--)o.attrHandle[n[r]]=t}function pt(e,t){var n=t&&e,r=n' +
        '&&1===e.nodeType&&1===t.nodeType&&(~t.sourceIndex||D)-(~e.source' +
        'Index||D);if(r)return r;if(n)while(n=n.nextSibling)if(n===t)retu' +
        'rn-1;return e?1:-1}function ft(e){return function(t){var n=t.nod' +
        'eName.toLowerCase();return"input"===n&&t.type===e}}function dt(e' +
        '){return function(t){var n=t.nodeName.toLowerCase();return("inpu' +
        't"===n||"button"===n)&&t.type===e}}function ht(e){return lt(func' +
        'tion(t){return t=+t,lt(function(n,r){var i,o=e([],n.length,t),a=' +
        'o.length;while(a--)n[i=o[a]]&&(n[i]=!(r[i]=n[i]))})})}s=at.isXML' +
        '=function(e){var t=e&&(e.ownerDocument||e).documentElement;retur' +
        'n t?"HTML"!==t.nodeName:!1},r=at.support={},p=at.setDocument=fun' +
        'ction(e){var n=e?'
      
        'e.ownerDocument||e:w,i=n.defaultView;return n!==f&&9===n.nodeTyp' +
        'e&&n.documentElement?(f=n,d=n.documentElement,h=!s(n),i&&i.attac' +
        'hEvent&&i!==i.top&&i.attachEvent("onbeforeunload",function(){p()' +
        '}),r.attributes=ut(function(e){return e.className="i",!e.getAttr' +
        'ibute("className")}),r.getElementsByTagName=ut(function(e){retur' +
        'n e.appendChild(n.createComment("")),!e.getElementsByTagName("*"' +
        ').length}),r.getElementsByClassName=ut(function(e){return e.inne' +
        'rHTML="<div class='#39'a'#39'></div><div class='#39'a i'#39'></div>",e.firstChil' +
        'd.className="i",2===e.getElementsByClassName("i").length}),r.get' +
        'ById=ut(function(e){return d.appendChild(e).id=b,!n.getElementsB' +
        'yName||!n.getElementsByName(b).length}),r.getById?(o.find.ID=fun' +
        'ction(e,t){if(typeof t.getElementById!==j&&h){var n=t.getElement' +
        'ById(e);return n&&n.parentNode?[n]:[]}},o.filter.ID=function(e){' +
        'var t=e.replace(rt,it);return function(e){return e.getAttribute(' +
        '"id")===t}}):(delete o.find.ID,o.filter.ID=function(e){var t=e.r' +
        'eplace(rt,it);return function(e){var n=typeof e.getAttributeNode' +
        '!==j&&e.getAttributeNode("id");return n&&n.value===t}}),o.find.T' +
        'AG=r.getElementsByTagName?function(e,n){return typeof n.getEleme' +
        'ntsByTagName!==j?n.getElementsByTagName(e):t}:function(e,t){var ' +
        'n,r=[],i=0,o=t.getElementsByTagName(e);if("*"===e){while(n=o[i++' +
        '])1===n.nodeType&&r.push(n);return r}return o},o.find.CLASS=r.ge' +
        'tElementsByClassName&&function(e,n){return typeof n.getElementsB' +
        'yClassName!==j&&h?n.getElementsByClassName(e):t},m=[],g=[],(r.qs' +
        'a=K.test(n.querySelectorAll))&&(ut(function(e){e.innerHTML="<sel' +
        'ect><option selected='#39#39'></option></select>",e.querySelectorAll("' +
        '[selected]").length||g.push("\\["+P+"*(?:value|"+B+")"),e.queryS' +
        'electorAll(":checked").length||g.push(":checked")}),ut(function(' +
        'e){var t=n.createElement("input");t.setAttribute("type","hidden"' +
        '),e.appendChild(t).setAttribute("t",""),e.querySelectorAll("[t^=' +
        #39#39']").length&&g.push("[*^$]="+P+"*(?:'#39#39'|\"\")"),e.querySelectorA' +
        'll(":enabled").length||g.push(":enabled",":disabled"),e.querySel' +
        'ectorAll("*,:x"),g.push(",.*:")})),(r.matchesSelector=K.test(y=d' +
        '.webkitMatchesSelector||d.mozMatchesSelector||d.oMatchesSelector' +
        '||d.msMatchesSelector))&&ut(function(e){r.disconnectedMatch=y.ca' +
        'll(e,"div"),y.call(e,"[s!='#39#39']:x"),m.push("!=",I)}),g=g.length&&R' +
        'egExp(g.join("|")),m=m.length&&RegExp(m.join("|")),v=K.test(d.co' +
        'ntains)||d.compareDocumentPosition?function(e,t){var n=9===e.nod' +
        'eType?e.documentElement:e,r=t&&t.parentNode;return e===r||!(!r||' +
        '1!==r.nodeType||!(n.contains?n.contains(r):e.compareDocumentPosi' +
        'tion&&16&e.compareDocumentPosition(r)))}:function(e,t){if(t)whil' +
        'e(t=t.parentNode)if(t===e)return!0;return!1},A=d.compareDocument' +
        'Position?function(e,t){if(e===t)return S=!0,0;var i=t.compareDoc' +
        'umentPosition&&e.compareDocumentPosition&&e.compareDocumentPosit' +
        'ion(t);return i?1&i||!r.sortDetached&&t.compareDocumentPosition(' +
        'e)===i?e===n||v(w,e)?-1:t===n||v(w,t)?1:c?F.call(c,e)-F.call(c,t' +
        '):0:4&i?-1:1:e.compareDocumentPosition?-1:1}:function(e,t){var r' +
        ',i=0,o=e.parentNode,a=t.parentNode,s=[e],l=[t];if(e===t)return S' +
        '=!0,0;if(!o||!a)return e===n?-1:t===n?1:o?-1:a?1:c?F.call(c,e)-F' +
        '.call(c,t):0;if(o===a)return pt(e,t);r=e;while(r=r.parentNode)s.' +
        'unshift(r);r=t;while(r=r.parentNode)l.unshift(r);while(s[i]===l[' +
        'i])i++;return i?pt(s[i],l[i]):s[i]===w?-1:l[i]===w?1:0},n):f},at' +
        '.matches=function(e,t){return at(e,null,null,t)},at.matchesSelec' +
        'tor=function(e,t){if((e.ownerDocument||e)!==f&&p(e),t=t.replace(' +
        'Y,"='#39'$1'#39']"),!(!r.matchesSelector||!h||m&&m.test(t)||g&&g.test(t)' +
        '))try{var n=y.call(e,t);if(n||r.disconnectedMatch||e.document&&1' +
        '1!==e.document.nodeType)return n}catch(i){}return at(t,f,null,[e' +
        ']).length>0},at.contains=function(e,t){return(e.ownerDocument||e' +
        ')!==f&&p(e),v(e,t)},at.attr=function(e,n){(e.ownerDocument||e)!=' +
        '=f&&p(e);var i=o.attrHandle[n.toLowerCase()],a=i&&L.call(o.attrH' +
        'andle,n.toLowerCase())?i(e,n,!h):t;return a===t?r.attributes||!h' +
        '?'
      
        'e.getAttribute(n):(a=e.getAttributeNode(n))&&a.specified?a.value' +
        ':null:a},at.error=function(e){throw Error("Syntax error, unrecog' +
        'nized expression: "+e)},at.uniqueSort=function(e){var t,n=[],i=0' +
        ',o=0;if(S=!r.detectDuplicates,c=!r.sortStable&&e.slice(0),e.sort' +
        '(A),S){while(t=e[o++])t===e[o]&&(i=n.push(o));while(i--)e.splice' +
        '(n[i],1)}return e},a=at.getText=function(e){var t,n="",r=0,i=e.n' +
        'odeType;if(i){if(1===i||9===i||11===i){if("string"==typeof e.tex' +
        'tContent)return e.textContent;for(e=e.firstChild;e;e=e.nextSibli' +
        'ng)n+=a(e)}else if(3===i||4===i)return e.nodeValue}else for(;t=e' +
        '[r];r++)n+=a(t);return n},o=at.selectors={cacheLength:50,createP' +
        'seudo:lt,match:Q,attrHandle:{},find:{},relative:{">":{dir:"paren' +
        'tNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSiblin' +
        'g",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:functi' +
        'on(e){return e[1]=e[1].replace(rt,it),e[3]=(e[4]||e[5]||"").repl' +
        'ace(rt,it),"~="===e[2]&&(e[3]=" "+e[3]+" "),e.slice(0,4)},CHILD:' +
        'function(e){return e[1]=e[1].toLowerCase(),"nth"===e[1].slice(0,' +
        '3)?(e[3]||at.error(e[0]),e[4]=+(e[4]?e[5]+(e[6]||1):2*("even"===' +
        'e[3]||"odd"===e[3])),e[5]=+(e[7]+e[8]||"odd"===e[3])):e[3]&&at.e' +
        'rror(e[0]),e},PSEUDO:function(e){var n,r=!e[5]&&e[2];return Q.CH' +
        'ILD.test(e[0])?null:(e[3]&&e[4]!==t?e[2]=e[4]:r&&J.test(r)&&(n=m' +
        't(r,!0))&&(n=r.indexOf(")",r.length-n)-r.length)&&(e[0]=e[0].sli' +
        'ce(0,n),e[2]=r.slice(0,n)),e.slice(0,3))}},filter:{TAG:function(' +
        'e){var t=e.replace(rt,it).toLowerCase();return"*"===e?function()' +
        '{return!0}:function(e){return e.nodeName&&e.nodeName.toLowerCase' +
        '()===t}},CLASS:function(e){var t=N[e+" "];return t||(t=RegExp("(' +
        '^|"+P+")"+e+"("+P+"|$)"))&&N(e,function(e){return t.test("string' +
        '"==typeof e.className&&e.className||typeof e.getAttribute!==j&&e' +
        '.getAttribute("class")||"")})},ATTR:function(e,t,n){return funct' +
        'ion(r){var i=at.attr(r,e);return null==i?"!="===t:t?(i+="","="==' +
        '=t?i===n:"!="===t?i!==n:"^="===t?n&&0===i.indexOf(n):"*="===t?n&' +
        '&i.indexOf(n)>-1:"$="===t?n&&i.slice(-n.length)===n:"~="===t?(" ' +
        '"+i+" ").indexOf(n)>-1:"|="===t?i===n||i.slice(0,n.length+1)===n' +
        '+"-":!1):!0}},CHILD:function(e,t,n,r,i){var o="nth"!==e.slice(0,' +
        '3),a="last"!==e.slice(-4),s="of-type"===t;return 1===r&&0===i?fu' +
        'nction(e){return!!e.parentNode}:function(t,n,l){var u,c,p,f,d,h,' +
        'g=o!==a?"nextSibling":"previousSibling",m=t.parentNode,y=s&&t.no' +
        'deName.toLowerCase(),v=!l&&!s;if(m){if(o){while(g){p=t;while(p=p' +
        '[g])if(s?p.nodeName.toLowerCase()===y:1===p.nodeType)return!1;h=' +
        'g="only"===e&&!h&&"nextSibling"}return!0}if(h=[a?m.firstChild:m.' +
        'lastChild],a&&v){c=m[b]||(m[b]={}),u=c[e]||[],d=u[0]===T&&u[1],f' +
        '=u[0]===T&&u[2],p=d&&m.childNodes[d];while(p=++d&&p&&p[g]||(f=d=' +
        '0)||h.pop())if(1===p.nodeType&&++f&&p===t){c[e]=[T,d,f];break}}e' +
        'lse if(v&&(u=(t[b]||(t[b]={}))[e])&&u[0]===T)f=u[1];else while(p' +
        '=++d&&p&&p[g]||(f=d=0)||h.pop())if((s?p.nodeName.toLowerCase()==' +
        '=y:1===p.nodeType)&&++f&&(v&&((p[b]||(p[b]={}))[e]=[T,f]),p===t)' +
        ')break;return f-=i,f===r||0===f%r&&f/r>=0}}},PSEUDO:function(e,t' +
        '){var n,r=o.pseudos[e]||o.setFilters[e.toLowerCase()]||at.error(' +
        '"unsupported pseudo: "+e);return r[b]?r(t):r.length>1?(n=[e,e,""' +
        ',t],o.setFilters.hasOwnProperty(e.toLowerCase())?lt(function(e,n' +
        '){var i,o=r(e,t),a=o.length;while(a--)i=F.call(e,o[a]),e[i]=!(n[' +
        'i]=o[a])}):function(e){return r(e,0,n)}):r}},pseudos:{not:lt(fun' +
        'ction(e){var t=[],n=[],r=l(e.replace(z,"$1"));return r[b]?lt(fun' +
        'ction(e,t,n,i){var o,a=r(e,null,i,[]),s=e.length;while(s--)(o=a[' +
        's])&&(e[s]=!(t[s]=o))}):function(e,i,o){return t[0]=e,r(t,null,o' +
        ',n),!n.pop()}}),has:lt(function(e){return function(t){return at(' +
        'e,t).length>0}}),contains:lt(function(e){return function(t){retu' +
        'rn(t.textContent||t.innerText||a(t)).indexOf(e)>-1}}),lang:lt(fu' +
        'nction(e){return G.test(e||"")||at.error("unsupported lang: "+e)' +
        ',e=e.replace(rt,it).toLowerCase(),function(t){var n;do if(n=h?t.' +
        'lang:t.getAttribute("xml:lang")||t.getAttribute("lang"))return n' +
        '=n.toLowerCase(),n===e||0===n.indexOf(e+"-");while((t=t.parentNo' +
        'de)&&1===t.nodeType);return!'
      
        '1}}),target:function(t){var n=e.location&&e.location.hash;return' +
        ' n&&n.slice(1)===t.id},root:function(e){return e===d},focus:func' +
        'tion(e){return e===f.activeElement&&(!f.hasFocus||f.hasFocus())&' +
        '&!!(e.type||e.href||~e.tabIndex)},enabled:function(e){return e.d' +
        'isabled===!1},disabled:function(e){return e.disabled===!0},check' +
        'ed:function(e){var t=e.nodeName.toLowerCase();return"input"===t&' +
        '&!!e.checked||"option"===t&&!!e.selected},selected:function(e){r' +
        'eturn e.parentNode&&e.parentNode.selectedIndex,e.selected===!0},' +
        'empty:function(e){for(e=e.firstChild;e;e=e.nextSibling)if(e.node' +
        'Name>"@"||3===e.nodeType||4===e.nodeType)return!1;return!0},pare' +
        'nt:function(e){return!o.pseudos.empty(e)},header:function(e){ret' +
        'urn tt.test(e.nodeName)},input:function(e){return et.test(e.node' +
        'Name)},button:function(e){var t=e.nodeName.toLowerCase();return"' +
        'input"===t&&"button"===e.type||"button"===t},text:function(e){va' +
        'r t;return"input"===e.nodeName.toLowerCase()&&"text"===e.type&&(' +
        'null==(t=e.getAttribute("type"))||t.toLowerCase()===e.type)},fir' +
        'st:ht(function(){return[0]}),last:ht(function(e,t){return[t-1]})' +
        ',eq:ht(function(e,t,n){return[0>n?n+t:n]}),even:ht(function(e,t)' +
        '{var n=0;for(;t>n;n+=2)e.push(n);return e}),odd:ht(function(e,t)' +
        '{var n=1;for(;t>n;n+=2)e.push(n);return e}),lt:ht(function(e,t,n' +
        '){var r=0>n?n+t:n;for(;--r>=0;)e.push(r);return e}),gt:ht(functi' +
        'on(e,t,n){var r=0>n?n+t:n;for(;t>++r;)e.push(r);return e})}},o.p' +
        'seudos.nth=o.pseudos.eq;for(n in{radio:!0,checkbox:!0,file:!0,pa' +
        'ssword:!0,image:!0})o.pseudos[n]=ft(n);for(n in{submit:!0,reset:' +
        '!0})o.pseudos[n]=dt(n);function gt(){}gt.prototype=o.filters=o.p' +
        'seudos,o.setFilters=new gt;function mt(e,t){var n,r,i,a,s,l,u,c=' +
        'k[e+" "];if(c)return t?0:c.slice(0);s=e,l=[],u=o.preFilter;while' +
        '(s){(!n||(r=X.exec(s)))&&(r&&(s=s.slice(r[0].length)||s),l.push(' +
        'i=[])),n=!1,(r=U.exec(s))&&(n=r.shift(),i.push({value:n,type:r[0' +
        '].replace(z," ")}),s=s.slice(n.length));for(a in o.filter)!(r=Q[' +
        'a].exec(s))||u[a]&&!(r=u[a](r))||(n=r.shift(),i.push({value:n,ty' +
        'pe:a,matches:r}),s=s.slice(n.length));if(!n)break}return t?s.len' +
        'gth:s?at.error(e):k(e,l).slice(0)}function yt(e){var t=0,n=e.len' +
        'gth,r="";for(;n>t;t++)r+=e[t].value;return r}function vt(e,t,n){' +
        'var r=t.dir,o=n&&"parentNode"===r,a=C++;return t.first?function(' +
        't,n,i){while(t=t[r])if(1===t.nodeType||o)return e(t,n,i)}:functi' +
        'on(t,n,s){var l,u,c,p=T+" "+a;if(s){while(t=t[r])if((1===t.nodeT' +
        'ype||o)&&e(t,n,s))return!0}else while(t=t[r])if(1===t.nodeType||' +
        'o)if(c=t[b]||(t[b]={}),(u=c[r])&&u[0]===p){if((l=u[1])===!0||l==' +
        '=i)return l===!0}else if(u=c[r]=[p],u[1]=e(t,n,s)||i,u[1]===!0)r' +
        'eturn!0}}function bt(e){return e.length>1?function(t,n,r){var i=' +
        'e.length;while(i--)if(!e[i](t,n,r))return!1;return!0}:e[0]}funct' +
        'ion xt(e,t,n,r,i){var o,a=[],s=0,l=e.length,u=null!=t;for(;l>s;s' +
        '++)(o=e[s])&&(!n||n(o,r,i))&&(a.push(o),u&&t.push(s));return a}f' +
        'unction wt(e,t,n,r,i,o){return r&&!r[b]&&(r=wt(r)),i&&!i[b]&&(i=' +
        'wt(i,o)),lt(function(o,a,s,l){var u,c,p,f=[],d=[],h=a.length,g=o' +
        '||Nt(t||"*",s.nodeType?[s]:s,[]),m=!e||!o&&t?g:xt(g,f,e,s,l),y=n' +
        '?i||(o?e:h||r)?[]:a:m;if(n&&n(m,y,s,l),r){u=xt(y,d),r(u,[],s,l),' +
        'c=u.length;while(c--)(p=u[c])&&(y[d[c]]=!(m[d[c]]=p))}if(o){if(i' +
        '||e){if(i){u=[],c=y.length;while(c--)(p=y[c])&&u.push(m[c]=p);i(' +
        'null,y=[],u,l)}c=y.length;while(c--)(p=y[c])&&(u=i?F.call(o,p):f' +
        '[c])>-1&&(o[u]=!(a[u]=p))}}else y=xt(y===a?y.splice(h,y.length):' +
        'y),i?i(null,a,y,l):M.apply(a,y)})}function Tt(e){var t,n,r,i=e.l' +
        'ength,a=o.relative[e[0].type],s=a||o.relative[" "],l=a?1:0,c=vt(' +
        'function(e){return e===t},s,!0),p=vt(function(e){return F.call(t' +
        ',e)>-1},s,!0),f=[function(e,n,r){return!a&&(r||n!==u)||((t=n).no' +
        'deType?c(e,n,r):p(e,n,r))}];for(;i>l;l++)if(n=o.relative[e[l].ty' +
        'pe])f=[vt(bt(f),n)];else{if(n=o.filter[e[l].type].apply(null,e[l' +
        '].matches),n[b]){for(r=++l;i>r;r++)if(o.relative[e[r].type])brea' +
        'k;return wt(l>1&&bt(f),l>1&&yt(e.slice(0,l-1).concat({value:" "=' +
        '==e[l-2].type?"*":""})).replace(z,"$1"),n,r>l&&Tt(e.slice(l,r)),' +
        'i>r&&Tt(e=e.slice(r)),i>r&&yt(e))}f.push(n)}return bt(f)}functio' +
        'n Ct(e,t){var n=0,r=t.length>0,a=e.length>0,s=function(s,l,c,p,d' +
        '){var h,g,m,y=[],v=0,b="0",x=s&&'
      
        '[],w=null!=d,C=u,N=s||a&&o.find.TAG("*",d&&l.parentNode||l),k=T+' +
        '=null==C?1:Math.random()||.1;for(w&&(u=l!==f&&l,i=n);null!=(h=N[' +
        'b]);b++){if(a&&h){g=0;while(m=e[g++])if(m(h,l,c)){p.push(h);brea' +
        'k}w&&(T=k,i=++n)}r&&((h=!m&&h)&&v--,s&&x.push(h))}if(v+=b,r&&b!=' +
        '=v){g=0;while(m=t[g++])m(x,y,l,c);if(s){if(v>0)while(b--)x[b]||y' +
        '[b]||(y[b]=q.call(p));y=xt(y)}M.apply(p,y),w&&!s&&y.length>0&&v+' +
        't.length>1&&at.uniqueSort(p)}return w&&(T=k,u=C),x};return r?lt(' +
        's):s}l=at.compile=function(e,t){var n,r=[],i=[],o=E[e+" "];if(!o' +
        '){t||(t=mt(e)),n=t.length;while(n--)o=Tt(t[n]),o[b]?r.push(o):i.' +
        'push(o);o=E(e,Ct(i,r))}return o};function Nt(e,t,n){var r=0,i=t.' +
        'length;for(;i>r;r++)at(e,t[r],n);return n}function kt(e,t,n,i){v' +
        'ar a,s,u,c,p,f=mt(e);if(!i&&1===f.length){if(s=f[0]=f[0].slice(0' +
        '),s.length>2&&"ID"===(u=s[0]).type&&r.getById&&9===t.nodeType&&h' +
        '&&o.relative[s[1].type]){if(t=(o.find.ID(u.matches[0].replace(rt' +
        ',it),t)||[])[0],!t)return n;e=e.slice(s.shift().value.length)}a=' +
        'Q.needsContext.test(e)?0:s.length;while(a--){if(u=s[a],o.relativ' +
        'e[c=u.type])break;if((p=o.find[c])&&(i=p(u.matches[0].replace(rt' +
        ',it),V.test(s[0].type)&&t.parentNode||t))){if(s.splice(a,1),e=i.' +
        'length&&yt(s),!e)return M.apply(n,i),n;break}}}return l(e,f)(i,t' +
        ',!h,n,V.test(e)),n}r.sortStable=b.split("").sort(A).join("")===b' +
        ',r.detectDuplicates=S,p(),r.sortDetached=ut(function(e){return 1' +
        '&e.compareDocumentPosition(f.createElement("div"))}),ut(function' +
        '(e){return e.innerHTML="<a href='#39'#'#39'></a>","#"===e.firstChild.get' +
        'Attribute("href")})||ct("type|href|height|width",function(e,n,r)' +
        '{return r?t:e.getAttribute(n,"type"===n.toLowerCase()?1:2)}),r.a' +
        'ttributes&&ut(function(e){return e.innerHTML="<input/>",e.firstC' +
        'hild.setAttribute("value",""),""===e.firstChild.getAttribute("va' +
        'lue")})||ct("value",function(e,n,r){return r||"input"!==e.nodeNa' +
        'me.toLowerCase()?t:e.defaultValue}),ut(function(e){return null==' +
        'e.getAttribute("disabled")})||ct(B,function(e,n,r){var i;return ' +
        'r?t:(i=e.getAttributeNode(n))&&i.specified?i.value:e[n]===!0?n.t' +
        'oLowerCase():null}),x.find=at,x.expr=at.selectors,x.expr[":"]=x.' +
        'expr.pseudos,x.unique=at.uniqueSort,x.text=at.getText,x.isXMLDoc' +
        '=at.isXML,x.contains=at.contains}(e);var O={};function F(e){var ' +
        't=O[e]={};return x.each(e.match(T)||[],function(e,n){t[n]=!0}),t' +
        '}x.Callbacks=function(e){e="string"==typeof e?O[e]||F(e):x.exten' +
        'd({},e);var n,r,i,o,a,s,l=[],u=!e.once&&[],c=function(t){for(r=e' +
        '.memory&&t,i=!0,a=s||0,s=0,o=l.length,n=!0;l&&o>a;a++)if(l[a].ap' +
        'ply(t[0],t[1])===!1&&e.stopOnFalse){r=!1;break}n=!1,l&&(u?u.leng' +
        'th&&c(u.shift()):r?l=[]:p.disable())},p={add:function(){if(l){va' +
        'r t=l.length;(function i(t){x.each(t,function(t,n){var r=x.type(' +
        'n);"function"===r?e.unique&&p.has(n)||l.push(n):n&&n.length&&"st' +
        'ring"!==r&&i(n)})})(arguments),n?o=l.length:r&&(s=t,c(r))}return' +
        ' this},remove:function(){return l&&x.each(arguments,function(e,t' +
        '){var r;while((r=x.inArray(t,l,r))>-1)l.splice(r,1),n&&(o>=r&&o-' +
        '-,a>=r&&a--)}),this},has:function(e){return e?x.inArray(e,l)>-1:' +
        '!(!l||!l.length)},empty:function(){return l=[],o=0,this},disable' +
        ':function(){return l=u=r=t,this},disabled:function(){return!l},l' +
        'ock:function(){return u=t,r||p.disable(),this},locked:function()' +
        '{return!u},fireWith:function(e,t){return!l||i&&!u||(t=t||[],t=[e' +
        ',t.slice?t.slice():t],n?u.push(t):c(t)),this},fire:function(){re' +
        'turn p.fireWith(this,arguments),this},fired:function(){return!!i' +
        '}};return p},x.extend({Deferred:function(e){var t=[["resolve","d' +
        'one",x.Callbacks("once memory"),"resolved"],["reject","fail",x.C' +
        'allbacks("once memory"),"rejected"],["notify","progress",x.Callb' +
        'acks("memory")]],n="pending",r={state:function(){return n},alway' +
        's:function(){return i.done(arguments).fail(arguments),this},then' +
        ':function(){var e=arguments;return x.Deferred(function(n){x.each' +
        '(t,function(t,o){var a=o[0],s=x.isFunction(e[t])&&e[t];i[o[1]](f' +
        'unction(){var e=s&&s.apply(this,arguments);e&&x.isFunction(e.pro' +
        'mise)?e.promise().done(n.resolve).fail(n.reject).progress(n.noti' +
        'fy):n[a+"With"](this===r?n.promise():this,s?[e]:arguments)})}),e' +
        '=null}).promise()},promise:function(e){return null!=e?'
      
        'x.extend(e,r):r}},i={};return r.pipe=r.then,x.each(t,function(e,' +
        'o){var a=o[2],s=o[3];r[o[1]]=a.add,s&&a.add(function(){n=s},t[1^' +
        'e][2].disable,t[2][2].lock),i[o[0]]=function(){return i[o[0]+"Wi' +
        'th"](this===i?r:this,arguments),this},i[o[0]+"With"]=a.fireWith}' +
        '),r.promise(i),e&&e.call(i,i),i},when:function(e){var t=0,n=g.ca' +
        'll(arguments),r=n.length,i=1!==r||e&&x.isFunction(e.promise)?r:0' +
        ',o=1===i?e:x.Deferred(),a=function(e,t,n){return function(r){t[e' +
        ']=this,n[e]=arguments.length>1?g.call(arguments):r,n===s?o.notif' +
        'yWith(t,n):--i||o.resolveWith(t,n)}},s,l,u;if(r>1)for(s=Array(r)' +
        ',l=Array(r),u=Array(r);r>t;t++)n[t]&&x.isFunction(n[t].promise)?' +
        'n[t].promise().done(a(t,u,n)).fail(o.reject).progress(a(t,l,s)):' +
        '--i;return i||o.resolveWith(u,n),o.promise()}}),x.support=functi' +
        'on(t){var n,r,o,s,l,u,c,p,f,d=a.createElement("div");if(d.setAtt' +
        'ribute("className","t"),d.innerHTML="  <link/><table></table><a ' +
        'href='#39'/a'#39'>a</a><input type='#39'checkbox'#39'/>",n=d.getElementsByTagNam' +
        'e("*")||[],r=d.getElementsByTagName("a")[0],!r||!r.style||!n.len' +
        'gth)return t;s=a.createElement("select"),u=s.appendChild(a.creat' +
        'eElement("option")),o=d.getElementsByTagName("input")[0],r.style' +
        '.cssText="top:1px;float:left;opacity:.5",t.getSetAttribute="t"!=' +
        '=d.className,t.leadingWhitespace=3===d.firstChild.nodeType,t.tbo' +
        'dy=!d.getElementsByTagName("tbody").length,t.htmlSerialize=!!d.g' +
        'etElementsByTagName("link").length,t.style=/top/.test(r.getAttri' +
        'bute("style")),t.hrefNormalized="/a"===r.getAttribute("href"),t.' +
        'opacity=/^0.5/.test(r.style.opacity),t.cssFloat=!!r.style.cssFlo' +
        'at,t.checkOn=!!o.value,t.optSelected=u.selected,t.enctype=!!a.cr' +
        'eateElement("form").enctype,t.html5Clone="<:nav></:nav>"!==a.cre' +
        'ateElement("nav").cloneNode(!0).outerHTML,t.inlineBlockNeedsLayo' +
        'ut=!1,t.shrinkWrapBlocks=!1,t.pixelPosition=!1,t.deleteExpando=!' +
        '0,t.noCloneEvent=!0,t.reliableMarginRight=!0,t.boxSizingReliable' +
        '=!0,o.checked=!0,t.noCloneChecked=o.cloneNode(!0).checked,s.disa' +
        'bled=!0,t.optDisabled=!u.disabled;try{delete d.test}catch(h){t.d' +
        'eleteExpando=!1}o=a.createElement("input"),o.setAttribute("value' +
        '",""),t.input=""===o.getAttribute("value"),o.value="t",o.setAttr' +
        'ibute("type","radio"),t.radioValue="t"===o.value,o.setAttribute(' +
        '"checked","t"),o.setAttribute("name","t"),l=a.createDocumentFrag' +
        'ment(),l.appendChild(o),t.appendChecked=o.checked,t.checkClone=l' +
        '.cloneNode(!0).cloneNode(!0).lastChild.checked,d.attachEvent&&(d' +
        '.attachEvent("onclick",function(){t.noCloneEvent=!1}),d.cloneNod' +
        'e(!0).click());for(f in{submit:!0,change:!0,focusin:!0})d.setAtt' +
        'ribute(c="on"+f,"t"),t[f+"Bubbles"]=c in e||d.attributes[c].expa' +
        'ndo===!1;d.style.backgroundClip="content-box",d.cloneNode(!0).st' +
        'yle.backgroundClip="",t.clearCloneStyle="content-box"===d.style.' +
        'backgroundClip;for(f in x(t))break;return t.ownLast="0"!==f,x(fu' +
        'nction(){var n,r,o,s="padding:0;margin:0;border:0;display:block;' +
        'box-sizing:content-box;-moz-box-sizing:content-box;-webkit-box-s' +
        'izing:content-box;",l=a.getElementsByTagName("body")[0];l&&(n=a.' +
        'createElement("div"),n.style.cssText="border:0;width:0;height:0;' +
        'position:absolute;top:0;left:-9999px;margin-top:1px",l.appendChi' +
        'ld(n).appendChild(d),d.innerHTML="<table><tr><td></td><td>t</td>' +
        '</tr></table>",o=d.getElementsByTagName("td"),o[0].style.cssText' +
        '="padding:0;margin:0;border:0;display:none",p=0===o[0].offsetHei' +
        'ght,o[0].style.display="",o[1].style.display="none",t.reliableHi' +
        'ddenOffsets=p&&0===o[0].offsetHeight,d.innerHTML="",d.style.cssT' +
        'ext="box-sizing:border-box;-moz-box-sizing:border-box;-webkit-bo' +
        'x-sizing:border-box;padding:1px;border:1px;display:block;width:4' +
        'px;margin-top:1%;position:absolute;top:1%;",x.swap(l,null!=l.sty' +
        'le.zoom?{zoom:1}:{},function(){t.boxSizing=4===d.offsetWidth}),e' +
        '.getComputedStyle&&(t.pixelPosition="1%"!==(e.getComputedStyle(d' +
        ',null)||{}).top,t.boxSizingReliable="4px"===(e.getComputedStyle(' +
        'd,null)||{width:"4px"}).width,r=d.appendChild(a.createElement'
      
        '("div")),r.style.cssText=d.style.cssText=s,r.style.marginRight=r' +
        '.style.width="0",d.style.width="1px",t.reliableMarginRight=!pars' +
        'eFloat((e.getComputedStyle(r,null)||{}).marginRight)),typeof d.s' +
        'tyle.zoom!==i&&(d.innerHTML="",d.style.cssText=s+"width:1px;padd' +
        'ing:1px;display:inline;zoom:1",t.inlineBlockNeedsLayout=3===d.of' +
        'fsetWidth,d.style.display="block",d.innerHTML="<div></div>",d.fi' +
        'rstChild.style.width="5px",t.shrinkWrapBlocks=3!==d.offsetWidth,' +
        't.inlineBlockNeedsLayout&&(l.style.zoom=1)),l.removeChild(n),n=d' +
        '=o=r=null)}),n=s=l=u=r=o=null,t'
      
        '}({});var B=/(?:\{[\s\S]*\}|\[[\s\S]*\])$/,P=/([A-Z])/g;function' +
        ' R(e,n,r,i){if(x.acceptData(e)){var o,a,s=x.expando,l=e.nodeType' +
        ',u=l?x.cache:e,c=l?e[s]:e[s]&&s;if(c&&u[c]&&(i||u[c].data)||r!==' +
        't||"string"!=typeof n)return c||(c=l?e[s]=p.pop()||x.guid++:s),u' +
        '[c]||(u[c]=l?{}:{toJSON:x.noop}),("object"==typeof n||"function"' +
        '==typeof n)&&(i?u[c]=x.extend(u[c],n):u[c].data=x.extend(u[c].da' +
        'ta,n)),a=u[c],i||(a.data||(a.data={}),a=a.data),r!==t&&(a[x.came' +
        'lCase(n)]=r),"string"==typeof n?(o=a[n],null==o&&(o=a[x.camelCas' +
        'e(n)])):o=a,o}}function W(e,t,n){if(x.acceptData(e)){var r,i,o=e' +
        '.nodeType,a=o?x.cache:e,s=o?e[x.expando]:x.expando;if(a[s]){if(t' +
        '&&(r=n?a[s]:a[s].data)){x.isArray(t)?t=t.concat(x.map(t,x.camelC' +
        'ase)):t in r?t=[t]:(t=x.camelCase(t),t=t in r?[t]:t.split(" ")),' +
        'i=t.length;while(i--)delete r[t[i]];if(n?!I(r):!x.isEmptyObject(' +
        'r))return}(n||(delete a[s].data,I(a[s])))&&(o?x.cleanData([e],!0' +
        '):x.support.deleteExpando||a!=a.window?delete a[s]:a[s]=null)}}}' +
        'x.extend({cache:{},noData:{applet:!0,embed:!0,object:"clsid:D27C' +
        'DB6E-AE6D-11cf-96B8-444553540000"},hasData:function(e){return e=' +
        'e.nodeType?x.cache[e[x.expando]]:e[x.expando],!!e&&!I(e)},data:f' +
        'unction(e,t,n){return R(e,t,n)},removeData:function(e,t){return ' +
        'W(e,t)},_data:function(e,t,n){return R(e,t,n,!0)},_removeData:fu' +
        'nction(e,t){return W(e,t,!0)},acceptData:function(e){if(e.nodeTy' +
        'pe&&1!==e.nodeType&&9!==e.nodeType)return!1;var t=e.nodeName&&x.' +
        'noData[e.nodeName.toLowerCase()];return!t||t!==!0&&e.getAttribut' +
        'e("classid")===t}}),x.fn.extend({data:function(e,n){var r,i,o=nu' +
        'll,a=0,s=this[0];if(e===t){if(this.length&&(o=x.data(s),1===s.no' +
        'deType&&!x._data(s,"parsedAttrs"))){for(r=s.attributes;r.length>' +
        'a;a++)i=r[a].name,0===i.indexOf("data-")&&(i=x.camelCase(i.slice' +
        '(5)),$(s,i,o[i]));x._data(s,"parsedAttrs",!0)}return o}return"ob' +
        'ject"==typeof e?this.each(function(){x.data(this,e)}):arguments.' +
        'length>1?this.each(function(){x.data(this,e,n)}):s?$(s,e,x.data(' +
        's,e)):null},removeData:function(e){return this.each(function(){x' +
        '.removeData(this,e)})}});function $(e,n,r){if(r===t&&1===e.nodeT' +
        'ype){var i="data-"+n.replace(P,"-$1").toLowerCase();if(r=e.getAt' +
        'tribute(i),"string"==typeof r){try{r="true"===r?!0:"false"===r?!' +
        '1:"null"===r?null:+r+""===r?+r:B.test(r)?x.parseJSON(r):r}catch(' +
        'o){}x.data(e,n,r)}else r=t}return r}function I(e){var t;for(t in' +
        ' e)if(("data"!==t||!x.isEmptyObject(e[t]))&&"toJSON"!==t)return!' +
        '1;return!0}x.extend({queue:function(e,n,r){var i;return e?(n=(n|' +
        '|"fx")+"queue",i=x._data(e,n),r&&(!i||x.isArray(r)?i=x._data(e,n' +
        ',x.makeArray(r)):i.push(r)),i||[]):t},dequeue:function(e,t){t=t|' +
        '|"fx";var n=x.queue(e,t),r=n.length,i=n.shift(),o=x._queueHooks(' +
        'e,t),a=function(){x.dequeue(e,t)};"inprogress"===i&&(i=n.shift()' +
        ',r--),i&&("fx"===t&&n.unshift("inprogress"),delete o.stop,i.call' +
        '(e,a,o)),!r&&o&&o.empty.fire()},_queueHooks:function(e,t){var n=' +
        't+"queueHooks";return x._data(e,n)||x._data(e,n,{empty:x.Callbac' +
        'ks("once memory").add(function(){x._removeData(e,t+"queue"),x._r' +
        'emoveData(e,n)})})}}),x.fn.extend({queue:function(e,n){var r=2;r' +
        'eturn"string"!=typeof e&&(n=e,e="fx",r--),r>arguments.length?x.q' +
        'ueue(this[0],e):n===t?this:this.each(function(){var t=x.queue(th' +
        'is,e,n);x._queueHooks(this,e),"fx"===e&&"inprogress"!==t[0]&&x.d' +
        'equeue(this,e)})},dequeue:function(e){return this.each(function(' +
        '){x.dequeue(this,e)})},delay:function(e,t){return e=x.fx?x.fx.sp' +
        'eeds[e]||e:e,t=t||"fx",this.queue(t,function(t,n){var r=setTimeo' +
        'ut(t,e);n.stop=function(){clearTimeout(r)}})},clearQueue:functio' +
        'n(e){return this.queue(e||"fx",[])},promise:function(e,n){var r,' +
        'i=1,o=x.Deferred(),a=this,s=this.length,l=function(){--i||o.reso' +
        'lveWith(a,[a])};"string"!=typeof e&&(n=e,e=t),e=e||"fx";while(s-' +
        '-)r=x._data(a[s],e+"queueHooks"),r&&r.empty&&(i++,r.empty.add(l)' +
        ');return l(),o.promise(n)}});var z,X,U=/[\t\r\n\f]/g,V=/\r/g,Y=/' +
        '^(?:input|select|textarea|button|object)$/i,J=/^(?:a|area)$/i,G=' +
        '/^(?:checked|selected)$/i,Q=x.support.getSetAttribute,K=x.suppor' +
        't.input;x.fn.extend({attr:function(e,t){return x.access'
      
        '(this,x.attr,e,t,arguments.length>1)},removeAttr:function(e){ret' +
        'urn this.each(function(){x.removeAttr(this,e)})},prop:function(e' +
        ',t){return x.access(this,x.prop,e,t,arguments.length>1)},removeP' +
        'rop:function(e){return e=x.propFix[e]||e,this.each(function(){tr' +
        'y{this[e]=t,delete this[e]}catch(n){}})},addClass:function(e){va' +
        'r t,n,r,i,o,a=0,s=this.length,l="string"==typeof e&&e;if(x.isFun' +
        'ction(e))return this.each(function(t){x(this).addClass(e.call(th' +
        'is,t,this.className))});if(l)for(t=(e||"").match(T)||[];s>a;a++)' +
        'if(n=this[a],r=1===n.nodeType&&(n.className?(" "+n.className+" "' +
        ').replace(U," "):" ")){o=0;while(i=t[o++])0>r.indexOf(" "+i+" ")' +
        '&&(r+=i+" ");n.className=x.trim(r)}return this},removeClass:func' +
        'tion(e){var t,n,r,i,o,a=0,s=this.length,l=0===arguments.length||' +
        '"string"==typeof e&&e;if(x.isFunction(e))return this.each(functi' +
        'on(t){x(this).removeClass(e.call(this,t,this.className))});if(l)' +
        'for(t=(e||"").match(T)||[];s>a;a++)if(n=this[a],r=1===n.nodeType' +
        '&&(n.className?(" "+n.className+" ").replace(U," "):"")){o=0;whi' +
        'le(i=t[o++])while(r.indexOf(" "+i+" ")>=0)r=r.replace(" "+i+" ",' +
        '" ");n.className=e?x.trim(r):""}return this},toggleClass:functio' +
        'n(e,t){var n=typeof e;return"boolean"==typeof t&&"string"===n?t?' +
        'this.addClass(e):this.removeClass(e):x.isFunction(e)?this.each(f' +
        'unction(n){x(this).toggleClass(e.call(this,n,this.className,t),t' +
        ')}):this.each(function(){if("string"===n){var t,r=0,o=x(this),a=' +
        'e.match(T)||[];while(t=a[r++])o.hasClass(t)?o.removeClass(t):o.a' +
        'ddClass(t)}else(n===i||"boolean"===n)&&(this.className&&x._data(' +
        'this,"__className__",this.className),this.className=this.classNa' +
        'me||e===!1?"":x._data(this,"__className__")||"")})},hasClass:fun' +
        'ction(e){var t=" "+e+" ",n=0,r=this.length;for(;r>n;n++)if(1===t' +
        'his[n].nodeType&&(" "+this[n].className+" ").replace(U," ").inde' +
        'xOf(t)>=0)return!0;return!1},val:function(e){var n,r,i,o=this[0]' +
        ';{if(arguments.length)return i=x.isFunction(e),this.each(functio' +
        'n(n){var o;1===this.nodeType&&(o=i?e.call(this,n,x(this).val()):' +
        'e,null==o?o="":"number"==typeof o?o+="":x.isArray(o)&&(o=x.map(o' +
        ',function(e){return null==e?"":e+""})),r=x.valHooks[this.type]||' +
        'x.valHooks[this.nodeName.toLowerCase()],r&&"set"in r&&r.set(this' +
        ',o,"value")!==t||(this.value=o))});if(o)return r=x.valHooks[o.ty' +
        'pe]||x.valHooks[o.nodeName.toLowerCase()],r&&"get"in r&&(n=r.get' +
        '(o,"value"))!==t?n:(n=o.value,"string"==typeof n?n.replace(V,"")' +
        ':null==n?"":n)}}}),x.extend({valHooks:{option:{get:function(e){v' +
        'ar t=x.find.attr(e,"value");return null!=t?t:e.text}},select:{ge' +
        't:function(e){var t,n,r=e.options,i=e.selectedIndex,o="select-on' +
        'e"===e.type||0>i,a=o?null:[],s=o?i+1:r.length,l=0>i?s:o?i:0;for(' +
        ';s>l;l++)if(n=r[l],!(!n.selected&&l!==i||(x.support.optDisabled?' +
        'n.disabled:null!==n.getAttribute("disabled"))||n.parentNode.disa' +
        'bled&&x.nodeName(n.parentNode,"optgroup"))){if(t=x(n).val(),o)re' +
        'turn t;a.push(t)}return a},set:function(e,t){var n,r,i=e.options' +
        ',o=x.makeArray(t),a=i.length;while(a--)r=i[a],(r.selected=x.inAr' +
        'ray(x(r).val(),o)>=0)&&(n=!0);return n||(e.selectedIndex=-1),o}}' +
        '},attr:function(e,n,r){var o,a,s=e.nodeType;if(e&&3!==s&&8!==s&&' +
        '2!==s)return typeof e.getAttribute===i?x.prop(e,n,r):(1===s&&x.i' +
        'sXMLDoc(e)||(n=n.toLowerCase(),o=x.attrHooks[n]||(x.expr.match.b' +
        'ool.test(n)?X:z)),r===t?o&&"get"in o&&null!==(a=o.get(e,n))?a:(a' +
        '=x.find.attr(e,n),null==a?t:a):null!==r?o&&"set"in o&&(a=o.set(e' +
        ',r,n))!==t?a:(e.setAttribute(n,r+""),r):(x.removeAttr(e,n),t))},' +
        'removeAttr:function(e,t){var n,r,i=0,o=t&&t.match(T);if(o&&1===e' +
        '.nodeType)while(n=o[i++])r=x.propFix[n]||n,x.expr.match.bool.tes' +
        't(n)?K&&Q||!G.test(n)?e[r]=!1:e[x.camelCase("default-"+n)]=e[r]=' +
        '!1:x.attr(e,n,""),e.removeAttribute(Q?n:r)},attrHooks:{type:{set' +
        ':function(e,t){if(!x.support.radioValue&&"radio"===t&&x.nodeName' +
        '(e,"input")){var n=e.value;return e.setAttribute("type",t),n&&(e' +
        '.value=n),t}}}},propFix:{"for":"htmlFor","class":"className"},pr' +
        'op:function(e,n,r){var i,o,a,s=e.nodeType;if(e&&3!==s&&8!==s&&2!' +
        '==s)return a=1!==s||!x.isXMLDoc(e),a&&'
      
        '(n=x.propFix[n]||n,o=x.propHooks[n]),r!==t?o&&"set"in o&&(i=o.se' +
        't(e,r,n))!==t?i:e[n]=r:o&&"get"in o&&null!==(i=o.get(e,n))?i:e[n' +
        ']},propHooks:{tabIndex:{get:function(e){var t=x.find.attr(e,"tab' +
        'index");return t?parseInt(t,10):Y.test(e.nodeName)||J.test(e.nod' +
        'eName)&&e.href?0:-1}}}}),X={set:function(e,t,n){return t===!1?x.' +
        'removeAttr(e,n):K&&Q||!G.test(n)?e.setAttribute(!Q&&x.propFix[n]' +
        '||n,n):e[x.camelCase("default-"+n)]=e[n]=!0,n}},x.each(x.expr.ma' +
        'tch.bool.source.match(/\w+/g),function(e,n){var r=x.expr.attrHan' +
        'dle[n]||x.find.attr;x.expr.attrHandle[n]=K&&Q||!G.test(n)?functi' +
        'on(e,n,i){var o=x.expr.attrHandle[n],a=i?t:(x.expr.attrHandle[n]' +
        '=t)!=r(e,n,i)?n.toLowerCase():null;return x.expr.attrHandle[n]=o' +
        ',a}:function(e,n,r){return r?t:e[x.camelCase("default-"+n)]?n.to' +
        'LowerCase():null}}),K&&Q||(x.attrHooks.value={set:function(e,n,r' +
        '){return x.nodeName(e,"input")?(e.defaultValue=n,t):z&&z.set(e,n' +
        ',r)}}),Q||(z={set:function(e,n,r){var i=e.getAttributeNode(r);re' +
        'turn i||e.setAttributeNode(i=e.ownerDocument.createAttribute(r))' +
        ',i.value=n+="","value"===r||n===e.getAttribute(r)?n:t}},x.expr.a' +
        'ttrHandle.id=x.expr.attrHandle.name=x.expr.attrHandle.coords=fun' +
        'ction(e,n,r){var i;return r?t:(i=e.getAttributeNode(n))&&""!==i.' +
        'value?i.value:null},x.valHooks.button={get:function(e,n){var r=e' +
        '.getAttributeNode(n);return r&&r.specified?r.value:t},set:z.set}' +
        ',x.attrHooks.contenteditable={set:function(e,t,n){z.set(e,""===t' +
        '?!1:t,n)}},x.each(["width","height"],function(e,n){x.attrHooks[n' +
        ']={set:function(e,r){return""===r?(e.setAttribute(n,"auto"),r):t' +
        '}}})),x.support.hrefNormalized||x.each(["href","src"],function(e' +
        ',t){x.propHooks[t]={get:function(e){return e.getAttribute(t,4)}}' +
        '}),x.support.style||(x.attrHooks.style={get:function(e){return e' +
        '.style.cssText||t},set:function(e,t){return e.style.cssText=t+""' +
        '}}),x.support.optSelected||(x.propHooks.selected={get:function(e' +
        '){var t=e.parentNode;return t&&(t.selectedIndex,t.parentNode&&t.' +
        'parentNode.selectedIndex),null}}),x.each(["tabIndex","readOnly",' +
        '"maxLength","cellSpacing","cellPadding","rowSpan","colSpan","use' +
        'Map","frameBorder","contentEditable"],function(){x.propFix[this.' +
        'toLowerCase()]=this}),x.support.enctype||(x.propFix.enctype="enc' +
        'oding"),x.each(["radio","checkbox"],function(){x.valHooks[this]=' +
        '{set:function(e,n){return x.isArray(n)?e.checked=x.inArray(x(e).' +
        'val(),n)>=0:t}},x.support.checkOn||(x.valHooks[this].get=functio' +
        'n(e){return null===e.getAttribute("value")?"on":e.value})});var ' +
        'Z=/^(?:input|select|textarea)$/i,et=/^key/,tt=/^(?:mouse|context' +
        'menu)|click/,nt=/^(?:focusinfocus|focusoutblur)$/,rt=/^([^.]*)(?' +
        ':\.(.+)|)$/;function it(){return!0}function ot(){return!1}functi' +
        'on at(){try{return a.activeElement}catch(e){}}x.event={global:{}' +
        ',add:function(e,n,r,o,a){var s,l,u,c,p,f,d,h,g,m,y,v=x._data(e);' +
        'if(v){r.handler&&(c=r,r=c.handler,a=c.selector),r.guid||(r.guid=' +
        'x.guid++),(l=v.events)||(l=v.events={}),(f=v.handle)||(f=v.handl' +
        'e=function(e){return typeof x===i||e&&x.event.triggered===e.type' +
        '?t:x.event.dispatch.apply(f.elem,arguments)},f.elem=e),n=(n||"")' +
        '.match(T)||[""],u=n.length;while(u--)s=rt.exec(n[u])||[],g=y=s[1' +
        '],m=(s[2]||"").split(".").sort(),g&&(p=x.event.special[g]||{},g=' +
        '(a?p.delegateType:p.bindType)||g,p=x.event.special[g]||{},d=x.ex' +
        'tend({type:g,origType:y,data:o,handler:r,guid:r.guid,selector:a,' +
        'needsContext:a&&x.expr.match.needsContext.test(a),namespace:m.jo' +
        'in(".")},c),(h=l[g])||(h=l[g]=[],h.delegateCount=0,p.setup&&p.se' +
        'tup.call(e,o,m,f)!==!1||(e.addEventListener?e.addEventListener(g' +
        ',f,!1):e.attachEvent&&e.attachEvent("on"+g,f))),p.add&&(p.add.ca' +
        'll(e,d),d.handler.guid||(d.handler.guid=r.guid)),a?h.splice(h.de' +
        'legateCount++,0,d):h.push(d),x.event.global[g]=!0);e=null}},remo' +
        've:function(e,t,n,r,i){var o,a,s,l,u,c,p,f,d,h,g,m=x.hasData(e)&' +
        '&x._data(e);if(m&&(c=m.events)){t=(t||"").match(T)||[""],u=t.len' +
        'gth;while(u--)if(s=rt.exec(t[u])||[],d=g=s[1],h=(s[2]||"").split' +
        '(".").sort(),d){p=x.event.special[d]||{},d=(r?p.delegateType:p.b' +
        'indType)||d,f=c[d]||[],s=s[2]&&RegExp("(^|\\.)"+h.join("\\.(?:.*' +
        '\\.|)")+"(\\.|'
      
        '$)"),l=o=f.length;while(o--)a=f[o],!i&&g!==a.origType||n&&n.guid' +
        '!==a.guid||s&&!s.test(a.namespace)||r&&r!==a.selector&&("**"!==r' +
        '||!a.selector)||(f.splice(o,1),a.selector&&f.delegateCount--,p.r' +
        'emove&&p.remove.call(e,a));l&&!f.length&&(p.teardown&&p.teardown' +
        '.call(e,h,m.handle)!==!1||x.removeEvent(e,d,m.handle),delete c[d' +
        '])}else for(d in c)x.event.remove(e,d+t[u],n,r,!0);x.isEmptyObje' +
        'ct(c)&&(delete m.handle,x._removeData(e,"events"))}},trigger:fun' +
        'ction(n,r,i,o){var s,l,u,c,p,f,d,h=[i||a],g=v.call(n,"type")?n.t' +
        'ype:n,m=v.call(n,"namespace")?n.namespace.split("."):[];if(u=f=i' +
        '=i||a,3!==i.nodeType&&8!==i.nodeType&&!nt.test(g+x.event.trigger' +
        'ed)&&(g.indexOf(".")>=0&&(m=g.split("."),g=m.shift(),m.sort()),l' +
        '=0>g.indexOf(":")&&"on"+g,n=n[x.expando]?n:new x.Event(g,"object' +
        '"==typeof n&&n),n.isTrigger=o?2:3,n.namespace=m.join("."),n.name' +
        'space_re=n.namespace?RegExp("(^|\\.)"+m.join("\\.(?:.*\\.|)")+"(' +
        '\\.|$)"):null,n.result=t,n.target||(n.target=i),r=null==r?[n]:x.' +
        'makeArray(r,[n]),p=x.event.special[g]||{},o||!p.trigger||p.trigg' +
        'er.apply(i,r)!==!1)){if(!o&&!p.noBubble&&!x.isWindow(i)){for(c=p' +
        '.delegateType||g,nt.test(c+g)||(u=u.parentNode);u;u=u.parentNode' +
        ')h.push(u),f=u;f===(i.ownerDocument||a)&&h.push(f.defaultView||f' +
        '.parentWindow||e)}d=0;while((u=h[d++])&&!n.isPropagationStopped(' +
        '))n.type=d>1?c:p.bindType||g,s=(x._data(u,"events")||{})[n.type]' +
        '&&x._data(u,"handle"),s&&s.apply(u,r),s=l&&u[l],s&&x.acceptData(' +
        'u)&&s.apply&&s.apply(u,r)===!1&&n.preventDefault();if(n.type=g,!' +
        'o&&!n.isDefaultPrevented()&&(!p._default||p._default.apply(h.pop' +
        '(),r)===!1)&&x.acceptData(i)&&l&&i[g]&&!x.isWindow(i)){f=i[l],f&' +
        '&(i[l]=null),x.event.triggered=g;try{i[g]()}catch(y){}x.event.tr' +
        'iggered=t,f&&(i[l]=f)}return n.result}},dispatch:function(e){e=x' +
        '.event.fix(e);var n,r,i,o,a,s=[],l=g.call(arguments),u=(x._data(' +
        'this,"events")||{})[e.type]||[],c=x.event.special[e.type]||{};if' +
        '(l[0]=e,e.delegateTarget=this,!c.preDispatch||c.preDispatch.call' +
        '(this,e)!==!1){s=x.event.handlers.call(this,e,u),n=0;while((o=s[' +
        'n++])&&!e.isPropagationStopped()){e.currentTarget=o.elem,a=0;whi' +
        'le((i=o.handlers[a++])&&!e.isImmediatePropagationStopped())(!e.n' +
        'amespace_re||e.namespace_re.test(i.namespace))&&(e.handleObj=i,e' +
        '.data=i.data,r=((x.event.special[i.origType]||{}).handle||i.hand' +
        'ler).apply(o.elem,l),r!==t&&(e.result=r)===!1&&(e.preventDefault' +
        '(),e.stopPropagation()))}return c.postDispatch&&c.postDispatch.c' +
        'all(this,e),e.result}},handlers:function(e,n){var r,i,o,a,s=[],l' +
        '=n.delegateCount,u=e.target;if(l&&u.nodeType&&(!e.button||"click' +
        '"!==e.type))for(;u!=this;u=u.parentNode||this)if(1===u.nodeType&' +
        '&(u.disabled!==!0||"click"!==e.type)){for(o=[],a=0;l>a;a++)i=n[a' +
        '],r=i.selector+" ",o[r]===t&&(o[r]=i.needsContext?x(r,this).inde' +
        'x(u)>=0:x.find(r,this,null,[u]).length),o[r]&&o.push(i);o.length' +
        '&&s.push({elem:u,handlers:o})}return n.length>l&&s.push({elem:th' +
        'is,handlers:n.slice(l)}),s},fix:function(e){if(e[x.expando])retu' +
        'rn e;var t,n,r,i=e.type,o=e,s=this.fixHooks[i];s||(this.fixHooks' +
        '[i]=s=tt.test(i)?this.mouseHooks:et.test(i)?this.keyHooks:{}),r=' +
        's.props?this.props.concat(s.props):this.props,e=new x.Event(o),t' +
        '=r.length;while(t--)n=r[t],e[n]=o[n];return e.target||(e.target=' +
        'o.srcElement||a),3===e.target.nodeType&&(e.target=e.target.paren' +
        'tNode),e.metaKey=!!e.metaKey,s.filter?s.filter(e,o):e},props:"al' +
        'tKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey' +
        ' relatedTarget shiftKey target timeStamp view which".split(" "),' +
        'fixHooks:{},keyHooks:{props:"char charCode key keyCode".split(" ' +
        '"),filter:function(e,t){return null==e.which&&(e.which=null!=t.c' +
        'harCode?t.charCode:t.keyCode),e}},mouseHooks:{props:"button butt' +
        'ons clientX clientY fromElement offsetX offsetY pageX pageY scre' +
        'enX screenY toElement".split(" "),filter:function(e,n){var r,i,o' +
        ',s=n.button,l=n.fromElement;return null==e.pageX&&null!=n.client' +
        'X&&(i=e.target.ownerDocument||a,o=i.documentElement,r=i.body,e.p' +
        'ageX=n.clientX+(o&&o.scrollLeft||r&&r.scrollLeft||0)-(o&&o.clien' +
        'tLeft||r&&r.clientLeft||0),e.pageY=n.clientY+'
      
        '(o&&o.scrollTop||r&&r.scrollTop||0)-(o&&o.clientTop||r&&r.client' +
        'Top||0)),!e.relatedTarget&&l&&(e.relatedTarget=l===e.target?n.to' +
        'Element:l),e.which||s===t||(e.which=1&s?1:2&s?3:4&s?2:0),e}},spe' +
        'cial:{load:{noBubble:!0},focus:{trigger:function(){if(this!==at(' +
        ')&&this.focus)try{return this.focus(),!1}catch(e){}},delegateTyp' +
        'e:"focusin"},blur:{trigger:function(){return this===at()&&this.b' +
        'lur?(this.blur(),!1):t},delegateType:"focusout"},click:{trigger:' +
        'function(){return x.nodeName(this,"input")&&"checkbox"===this.ty' +
        'pe&&this.click?(this.click(),!1):t},_default:function(e){return ' +
        'x.nodeName(e.target,"a")}},beforeunload:{postDispatch:function(e' +
        '){e.result!==t&&(e.originalEvent.returnValue=e.result)}}},simula' +
        'te:function(e,t,n,r){var i=x.extend(new x.Event,n,{type:e,isSimu' +
        'lated:!0,originalEvent:{}});r?x.event.trigger(i,null,t):x.event.' +
        'dispatch.call(t,i),i.isDefaultPrevented()&&n.preventDefault()}},' +
        'x.removeEvent=a.removeEventListener?function(e,t,n){e.removeEven' +
        'tListener&&e.removeEventListener(t,n,!1)}:function(e,t,n){var r=' +
        '"on"+t;e.detachEvent&&(typeof e[r]===i&&(e[r]=null),e.detachEven' +
        't(r,n))},x.Event=function(e,n){return this instanceof x.Event?(e' +
        '&&e.type?(this.originalEvent=e,this.type=e.type,this.isDefaultPr' +
        'evented=e.defaultPrevented||e.returnValue===!1||e.getPreventDefa' +
        'ult&&e.getPreventDefault()?it:ot):this.type=e,n&&x.extend(this,n' +
        '),this.timeStamp=e&&e.timeStamp||x.now(),this[x.expando]=!0,t):n' +
        'ew x.Event(e,n)},x.Event.prototype={isDefaultPrevented:ot,isProp' +
        'agationStopped:ot,isImmediatePropagationStopped:ot,preventDefaul' +
        't:function(){var e=this.originalEvent;this.isDefaultPrevented=it' +
        ',e&&(e.preventDefault?e.preventDefault():e.returnValue=!1)},stop' +
        'Propagation:function(){var e=this.originalEvent;this.isPropagati' +
        'onStopped=it,e&&(e.stopPropagation&&e.stopPropagation(),e.cancel' +
        'Bubble=!0)},stopImmediatePropagation:function(){this.isImmediate' +
        'PropagationStopped=it,this.stopPropagation()}},x.each({mouseente' +
        'r:"mouseover",mouseleave:"mouseout"},function(e,t){x.event.speci' +
        'al[e]={delegateType:t,bindType:t,handle:function(e){var n,r=this' +
        ',i=e.relatedTarget,o=e.handleObj;return(!i||i!==r&&!x.contains(r' +
        ',i))&&(e.type=o.origType,n=o.handler.apply(this,arguments),e.typ' +
        'e=t),n}}}),x.support.submitBubbles||(x.event.special.submit={set' +
        'up:function(){return x.nodeName(this,"form")?!1:(x.event.add(thi' +
        's,"click._submit keypress._submit",function(e){var n=e.target,r=' +
        'x.nodeName(n,"input")||x.nodeName(n,"button")?n.form:t;r&&!x._da' +
        'ta(r,"submitBubbles")&&(x.event.add(r,"submit._submit",function(' +
        'e){e._submit_bubble=!0}),x._data(r,"submitBubbles",!0))}),t)},po' +
        'stDispatch:function(e){e._submit_bubble&&(delete e._submit_bubbl' +
        'e,this.parentNode&&!e.isTrigger&&x.event.simulate("submit",this.' +
        'parentNode,e,!0))},teardown:function(){return x.nodeName(this,"f' +
        'orm")?!1:(x.event.remove(this,"._submit"),t)}}),x.support.change' +
        'Bubbles||(x.event.special.change={setup:function(){return Z.test' +
        '(this.nodeName)?(("checkbox"===this.type||"radio"===this.type)&&' +
        '(x.event.add(this,"propertychange._change",function(e){"checked"' +
        '===e.originalEvent.propertyName&&(this._just_changed=!0)}),x.eve' +
        'nt.add(this,"click._change",function(e){this._just_changed&&!e.i' +
        'sTrigger&&(this._just_changed=!1),x.event.simulate("change",this' +
        ',e,!0)})),!1):(x.event.add(this,"beforeactivate._change",functio' +
        'n(e){var t=e.target;Z.test(t.nodeName)&&!x._data(t,"changeBubble' +
        's")&&(x.event.add(t,"change._change",function(e){!this.parentNod' +
        'e||e.isSimulated||e.isTrigger||x.event.simulate("change",this.pa' +
        'rentNode,e,!0)}),x._data(t,"changeBubbles",!0))}),t)},handle:fun' +
        'ction(e){var n=e.target;return this!==n||e.isSimulated||e.isTrig' +
        'ger||"radio"!==n.type&&"checkbox"!==n.type?e.handleObj.handler.a' +
        'pply(this,arguments):t},teardown:function(){return x.event.remov' +
        'e(this,"._change"),!Z.test(this.nodeName)}}),x.support.focusinBu' +
        'bbles||x.each({focus:"focusin",blur:"focusout"},function(e,t){va' +
        'r n=0,r=function(e){x.event.simulate(t,e.target,x.event.fix(e),!' +
        '0)};x.event.special[t]='
      
        '{setup:function(){0===n++&&a.addEventListener(e,r,!0)},teardown:' +
        'function(){0===--n&&a.removeEventListener(e,r,!0)}}}),x.fn.exten' +
        'd({on:function(e,n,r,i,o){var a,s;if("object"==typeof e){"string' +
        '"!=typeof n&&(r=r||n,n=t);for(a in e)this.on(a,n,r,e[a],o);retur' +
        'n this}if(null==r&&null==i?(i=n,r=n=t):null==i&&("string"==typeo' +
        'f n?(i=r,r=t):(i=r,r=n,n=t)),i===!1)i=ot;else if(!i)return this;' +
        'return 1===o&&(s=i,i=function(e){return x().off(e),s.apply(this,' +
        'arguments)},i.guid=s.guid||(s.guid=x.guid++)),this.each(function' +
        '(){x.event.add(this,e,i,r,n)})},one:function(e,t,n,r){return thi' +
        's.on(e,t,n,r,1)},off:function(e,n,r){var i,o;if(e&&e.preventDefa' +
        'ult&&e.handleObj)return i=e.handleObj,x(e.delegateTarget).off(i.' +
        'namespace?i.origType+"."+i.namespace:i.origType,i.selector,i.han' +
        'dler),this;if("object"==typeof e){for(o in e)this.off(o,n,e[o]);' +
        'return this}return(n===!1||"function"==typeof n)&&(r=n,n=t),r===' +
        '!1&&(r=ot),this.each(function(){x.event.remove(this,e,r,n)})},tr' +
        'igger:function(e,t){return this.each(function(){x.event.trigger(' +
        'e,t,this)})},triggerHandler:function(e,n){var r=this[0];return r' +
        '?x.event.trigger(e,n,r,!0):t}});var st=/^.[^:#\[\.,]*$/,lt=/^(?:' +
        'parents|prev(?:Until|All))/,ut=x.expr.match.needsContext,ct={chi' +
        'ldren:!0,contents:!0,next:!0,prev:!0};x.fn.extend({find:function' +
        '(e){var t,n=[],r=this,i=r.length;if("string"!=typeof e)return th' +
        'is.pushStack(x(e).filter(function(){for(t=0;i>t;t++)if(x.contain' +
        's(r[t],this))return!0}));for(t=0;i>t;t++)x.find(e,r[t],n);return' +
        ' n=this.pushStack(i>1?x.unique(n):n),n.selector=this.selector?th' +
        'is.selector+" "+e:e,n},has:function(e){var t,n=x(e,this),r=n.len' +
        'gth;return this.filter(function(){for(t=0;r>t;t++)if(x.contains(' +
        'this,n[t]))return!0})},not:function(e){return this.pushStack(ft(' +
        'this,e||[],!0))},filter:function(e){return this.pushStack(ft(thi' +
        's,e||[],!1))},is:function(e){return!!ft(this,"string"==typeof e&' +
        '&ut.test(e)?x(e):e||[],!1).length},closest:function(e,t){var n,r' +
        '=0,i=this.length,o=[],a=ut.test(e)||"string"!=typeof e?x(e,t||th' +
        'is.context):0;for(;i>r;r++)for(n=this[r];n&&n!==t;n=n.parentNode' +
        ')if(11>n.nodeType&&(a?a.index(n)>-1:1===n.nodeType&&x.find.match' +
        'esSelector(n,e))){n=o.push(n);break}return this.pushStack(o.leng' +
        'th>1?x.unique(o):o)},index:function(e){return e?"string"==typeof' +
        ' e?x.inArray(this[0],x(e)):x.inArray(e.jquery?e[0]:e,this):this[' +
        '0]&&this[0].parentNode?this.first().prevAll().length:-1},add:fun' +
        'ction(e,t){var n="string"==typeof e?x(e,t):x.makeArray(e&&e.node' +
        'Type?[e]:e),r=x.merge(this.get(),n);return this.pushStack(x.uniq' +
        'ue(r))},addBack:function(e){return this.add(null==e?this.prevObj' +
        'ect:this.prevObject.filter(e))}});function pt(e,t){do e=e[t];whi' +
        'le(e&&1!==e.nodeType);return e}x.each({parent:function(e){var t=' +
        'e.parentNode;return t&&11!==t.nodeType?t:null},parents:function(' +
        'e){return x.dir(e,"parentNode")},parentsUntil:function(e,t,n){re' +
        'turn x.dir(e,"parentNode",n)},next:function(e){return pt(e,"next' +
        'Sibling")},prev:function(e){return pt(e,"previousSibling")},next' +
        'All:function(e){return x.dir(e,"nextSibling")},prevAll:function(' +
        'e){return x.dir(e,"previousSibling")},nextUntil:function(e,t,n){' +
        'return x.dir(e,"nextSibling",n)},prevUntil:function(e,t,n){retur' +
        'n x.dir(e,"previousSibling",n)},siblings:function(e){return x.si' +
        'bling((e.parentNode||{}).firstChild,e)},children:function(e){ret' +
        'urn x.sibling(e.firstChild)},contents:function(e){return x.nodeN' +
        'ame(e,"iframe")?e.contentDocument||e.contentWindow.document:x.me' +
        'rge([],e.childNodes)}},function(e,t){x.fn[e]=function(n,r){var i' +
        '=x.map(this,t,n);return"Until"!==e.slice(-5)&&(r=n),r&&"string"=' +
        '=typeof r&&(i=x.filter(r,i)),this.length>1&&(ct[e]||(i=x.unique(' +
        'i)),lt.test(e)&&(i=i.reverse())),this.pushStack(i)}}),x.extend({' +
        'filter:function(e,t,n){var r=t[0];return n&&(e=":not("+e+")"),1=' +
        '==t.length&&1===r.nodeType?x.find.matchesSelector(r,e)?[r]:[]:x.' +
        'find.matches(e,x.grep(t,function(e){return 1===e.nodeType}))},di' +
        'r:function(e,n,r){var i=[],o=e[n];while(o&&9!==o.nodeType&&(r===' +
        't||1!==o.nodeType||!x(o).is(r)))1===o.nodeType&&i.push(o),o=o[n]' +
        ';return i},sibling:function(e,t){var n=[];for(;e;e=e.nextSibling' +
        ')1===e.nodeType&&e!'
      
        '==t&&n.push(e);return n}});function ft(e,t,n){if(x.isFunction(t)' +
        ')return x.grep(e,function(e,r){return!!t.call(e,r,e)!==n});if(t.' +
        'nodeType)return x.grep(e,function(e){return e===t!==n});if("stri' +
        'ng"==typeof t){if(st.test(t))return x.filter(t,e,n);t=x.filter(t' +
        ',e)}return x.grep(e,function(e){return x.inArray(e,t)>=0!==n})}f' +
        'unction dt(e){var t=ht.split("|"),n=e.createDocumentFragment();i' +
        'f(n.createElement)while(t.length)n.createElement(t.pop());return' +
        ' n}var ht="abbr|article|aside|audio|bdi|canvas|data|datalist|det' +
        'ails|figcaption|figure|footer|header|hgroup|mark|meter|nav|outpu' +
        't|progress|section|summary|time|video",gt=/ jQuery\d+="(?:null|\' +
        'd+)"/g,mt=RegExp("<(?:"+ht+")[\\s/>]","i"),yt=/^\s+/,vt=/<(?!are' +
        'a|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/g' +
        'i,bt=/<([\w:]+)/,xt=/<tbody/i,wt=/<|&#?\w+;/,Tt=/<(?:script|styl' +
        'e|link)/i,Ct=/^(?:checkbox|radio)$/i,Nt=/checked\s*(?:[^=]|=\s*.' +
        'checked.)/i,kt=/^$|\/(?:java|ecma)script/i,Et=/^true\/(.*)/,St=/' +
        '^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g,At={option:[1,"<select' +
        ' multiple='#39'multiple'#39'>","</select>"],legend:[1,"<fieldset>","</fi' +
        'eldset>"],area:[1,"<map>","</map>"],param:[1,"<object>","</objec' +
        't>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tb' +
        'ody></table>"],col:[2,"<table><tbody></tbody><colgroup>","</colg' +
        'roup></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table' +
        '>"],_default:x.support.htmlSerialize?[0,"",""]:[1,"X<div>","</di' +
        'v>"]},jt=dt(a),Dt=jt.appendChild(a.createElement("div"));At.optg' +
        'roup=At.option,At.tbody=At.tfoot=At.colgroup=At.caption=At.thead' +
        ',At.th=At.td,x.fn.extend({text:function(e){return x.access(this,' +
        'function(e){return e===t?x.text(this):this.empty().append((this[' +
        '0]&&this[0].ownerDocument||a).createTextNode(e))},null,e,argumen' +
        'ts.length)},append:function(){return this.domManip(arguments,fun' +
        'ction(e){if(1===this.nodeType||11===this.nodeType||9===this.node' +
        'Type){var t=Lt(this,e);t.appendChild(e)}})},prepend:function(){r' +
        'eturn this.domManip(arguments,function(e){if(1===this.nodeType||' +
        '11===this.nodeType||9===this.nodeType){var t=Lt(this,e);t.insert' +
        'Before(e,t.firstChild)}})},before:function(){return this.domMani' +
        'p(arguments,function(e){this.parentNode&&this.parentNode.insertB' +
        'efore(e,this)})},after:function(){return this.domManip(arguments' +
        ',function(e){this.parentNode&&this.parentNode.insertBefore(e,thi' +
        's.nextSibling)})},remove:function(e,t){var n,r=e?x.filter(e,this' +
        '):this,i=0;for(;null!=(n=r[i]);i++)t||1!==n.nodeType||x.cleanDat' +
        'a(Ft(n)),n.parentNode&&(t&&x.contains(n.ownerDocument,n)&&_t(Ft(' +
        'n,"script")),n.parentNode.removeChild(n));return this},empty:fun' +
        'ction(){var e,t=0;for(;null!=(e=this[t]);t++){1===e.nodeType&&x.' +
        'cleanData(Ft(e,!1));while(e.firstChild)e.removeChild(e.firstChil' +
        'd);e.options&&x.nodeName(e,"select")&&(e.options.length=0)}retur' +
        'n this},clone:function(e,t){return e=null==e?!1:e,t=null==t?e:t,' +
        'this.map(function(){return x.clone(this,e,t)})},html:function(e)' +
        '{return x.access(this,function(e){var n=this[0]||{},r=0,i=this.l' +
        'ength;if(e===t)return 1===n.nodeType?n.innerHTML.replace(gt,""):' +
        't;if(!("string"!=typeof e||Tt.test(e)||!x.support.htmlSerialize&' +
        '&mt.test(e)||!x.support.leadingWhitespace&&yt.test(e)||At[(bt.ex' +
        'ec(e)||["",""])[1].toLowerCase()])){e=e.replace(vt,"<$1></$2>");' +
        'try{for(;i>r;r++)n=this[r]||{},1===n.nodeType&&(x.cleanData(Ft(n' +
        ',!1)),n.innerHTML=e);n=0}catch(o){}}n&&this.empty().append(e)},n' +
        'ull,e,arguments.length)},replaceWith:function(){var e=x.map(this' +
        ',function(e){return[e.nextSibling,e.parentNode]}),t=0;return thi' +
        's.domManip(arguments,function(n){var r=e[t++],i=e[t++];i&&(r&&r.' +
        'parentNode!==i&&(r=this.nextSibling),x(this).remove(),i.insertBe' +
        'fore(n,r))},!0),t?this:this.remove()},detach:function(e){return ' +
        'this.remove(e,!0)},domManip:function(e,t,n){e=d.apply([],e);var ' +
        'r,i,o,a,s,l,u=0,c=this.length,p=this,f=c-1,h=e[0],g=x.isFunction' +
        '(h);if(g||!(1>=c||"string"!=typeof h||x.support.checkClone)&&Nt.' +
        'test(h))return this.each(function(r){var i=p.eq(r);g&&(e[0]=h.ca' +
        'll(this,r,i.html())),i.domManip(e,t,n)});if'
      
        '(c&&(l=x.buildFragment(e,this[0].ownerDocument,!1,!n&&this),r=l.' +
        'firstChild,1===l.childNodes.length&&(l=r),r)){for(a=x.map(Ft(l,"' +
        'script"),Ht),o=a.length;c>u;u++)i=l,u!==f&&(i=x.clone(i,!0,!0),o' +
        '&&x.merge(a,Ft(i,"script"))),t.call(this[u],i,u);if(o)for(s=a[a.' +
        'length-1].ownerDocument,x.map(a,qt),u=0;o>u;u++)i=a[u],kt.test(i' +
        '.type||"")&&!x._data(i,"globalEval")&&x.contains(s,i)&&(i.src?x.' +
        '_evalUrl(i.src):x.globalEval((i.text||i.textContent||i.innerHTML' +
        '||"").replace(St,"")));l=r=null}return this}});function Lt(e,t){' +
        'return x.nodeName(e,"table")&&x.nodeName(1===t.nodeType?t:t.firs' +
        'tChild,"tr")?e.getElementsByTagName("tbody")[0]||e.appendChild(e' +
        '.ownerDocument.createElement("tbody")):e}function Ht(e){return e' +
        '.type=(null!==x.find.attr(e,"type"))+"/"+e.type,e}function qt(e)' +
        '{var t=Et.exec(e.type);return t?e.type=t[1]:e.removeAttribute("t' +
        'ype"),e}function _t(e,t){var n,r=0;for(;null!=(n=e[r]);r++)x._da' +
        'ta(n,"globalEval",!t||x._data(t[r],"globalEval"))}function Mt(e,' +
        't){if(1===t.nodeType&&x.hasData(e)){var n,r,i,o=x._data(e),a=x._' +
        'data(t,o),s=o.events;if(s){delete a.handle,a.events={};for(n in ' +
        's)for(r=0,i=s[n].length;i>r;r++)x.event.add(t,n,s[n][r])}a.data&' +
        '&(a.data=x.extend({},a.data))}}function Ot(e,t){var n,r,i;if(1==' +
        '=t.nodeType){if(n=t.nodeName.toLowerCase(),!x.support.noCloneEve' +
        'nt&&t[x.expando]){i=x._data(t);for(r in i.events)x.removeEvent(t' +
        ',r,i.handle);t.removeAttribute(x.expando)}"script"===n&&t.text!=' +
        '=e.text?(Ht(t).text=e.text,qt(t)):"object"===n?(t.parentNode&&(t' +
        '.outerHTML=e.outerHTML),x.support.html5Clone&&e.innerHTML&&!x.tr' +
        'im(t.innerHTML)&&(t.innerHTML=e.innerHTML)):"input"===n&&Ct.test' +
        '(e.type)?(t.defaultChecked=t.checked=e.checked,t.value!==e.value' +
        '&&(t.value=e.value)):"option"===n?t.defaultSelected=t.selected=e' +
        '.defaultSelected:("input"===n||"textarea"===n)&&(t.defaultValue=' +
        'e.defaultValue)}}x.each({appendTo:"append",prependTo:"prepend",i' +
        'nsertBefore:"before",insertAfter:"after",replaceAll:"replaceWith' +
        '"},function(e,t){x.fn[e]=function(e){var n,r=0,i=[],o=x(e),a=o.l' +
        'ength-1;for(;a>=r;r++)n=r===a?this:this.clone(!0),x(o[r])[t](n),' +
        'h.apply(i,n.get());return this.pushStack(i)}});function Ft(e,n){' +
        'var r,o,a=0,s=typeof e.getElementsByTagName!==i?e.getElementsByT' +
        'agName(n||"*"):typeof e.querySelectorAll!==i?e.querySelectorAll(' +
        'n||"*"):t;if(!s)for(s=[],r=e.childNodes||e;null!=(o=r[a]);a++)!n' +
        '||x.nodeName(o,n)?s.push(o):x.merge(s,Ft(o,n));return n===t||n&&' +
        'x.nodeName(e,n)?x.merge([e],s):s}function Bt(e){Ct.test(e.type)&' +
        '&(e.defaultChecked=e.checked)}x.extend({clone:function(e,t,n){va' +
        'r r,i,o,a,s,l=x.contains(e.ownerDocument,e);if(x.support.html5Cl' +
        'one||x.isXMLDoc(e)||!mt.test("<"+e.nodeName+">")?o=e.cloneNode(!' +
        '0):(Dt.innerHTML=e.outerHTML,Dt.removeChild(o=Dt.firstChild)),!(' +
        'x.support.noCloneEvent&&x.support.noCloneChecked||1!==e.nodeType' +
        '&&11!==e.nodeType||x.isXMLDoc(e)))for(r=Ft(o),s=Ft(e),a=0;null!=' +
        '(i=s[a]);++a)r[a]&&Ot(i,r[a]);if(t)if(n)for(s=s||Ft(e),r=r||Ft(o' +
        '),a=0;null!=(i=s[a]);a++)Mt(i,r[a]);else Mt(e,o);return r=Ft(o,"' +
        'script"),r.length>0&&_t(r,!l&&Ft(e,"script")),r=s=i=null,o},buil' +
        'dFragment:function(e,t,n,r){var i,o,a,s,l,u,c,p=e.length,f=dt(t)' +
        ',d=[],h=0;for(;p>h;h++)if(o=e[h],o||0===o)if("object"===x.type(o' +
        '))x.merge(d,o.nodeType?[o]:o);else if(wt.test(o)){s=s||f.appendC' +
        'hild(t.createElement("div")),l=(bt.exec(o)||["",""])[1].toLowerC' +
        'ase(),c=At[l]||At._default,s.innerHTML=c[1]+o.replace(vt,"<$1></' +
        '$2>")+c[2],i=c[0];while(i--)s=s.lastChild;if(!x.support.leadingW' +
        'hitespace&&yt.test(o)&&d.push(t.createTextNode(yt.exec(o)[0])),!' +
        'x.support.tbody){o="table"!==l||xt.test(o)?"<table>"!==c[1]||xt.' +
        'test(o)?0:s:s.firstChild,i=o&&o.childNodes.length;while(i--)x.no' +
        'deName(u=o.childNodes[i],"tbody")&&!u.childNodes.length&&o.remov' +
        'eChild(u)}x.merge(d,s.childNodes),s.textContent="";while(s.first' +
        'Child)s.removeChild(s.firstChild);s=f.lastChild}else d.push(t.cr' +
        'eateTextNode(o));s&&f.removeChild(s),x.support.appendChecked||x.' +
        'grep(Ft(d,"input"),Bt),h=0;while(o=d[h++])if((!r||-1===x.inArray' +
        '(o,r))&&(a=x.contains'
      
        '(o.ownerDocument,o),s=Ft(f.appendChild(o),"script"),a&&_t(s),n))' +
        '{i=0;while(o=s[i++])kt.test(o.type||"")&&n.push(o)}return s=null' +
        ',f},cleanData:function(e,t){var n,r,o,a,s=0,l=x.expando,u=x.cach' +
        'e,c=x.support.deleteExpando,f=x.event.special;for(;null!=(n=e[s]' +
        ');s++)if((t||x.acceptData(n))&&(o=n[l],a=o&&u[o])){if(a.events)f' +
        'or(r in a.events)f[r]?x.event.remove(n,r):x.removeEvent(n,r,a.ha' +
        'ndle);'
      
        'u[o]&&(delete u[o],c?delete n[l]:typeof n.removeAttribute!==i?n.' +
        'removeAttribute(l):n[l]=null,p.push(o))}},_evalUrl:function(e){r' +
        'eturn x.ajax({url:e,type:"GET",dataType:"script",async:!1,global' +
        ':!1,"throws":!0})}}),x.fn.extend({wrapAll:function(e){if(x.isFun' +
        'ction(e))return this.each(function(t){x(this).wrapAll(e.call(thi' +
        's,t))});if(this[0]){var t=x(e,this[0].ownerDocument).eq(0).clone' +
        '(!0);this[0].parentNode&&t.insertBefore(this[0]),t.map(function(' +
        '){var e=this;while(e.firstChild&&1===e.firstChild.nodeType)e=e.f' +
        'irstChild;return e}).append(this)}return this},wrapInner:functio' +
        'n(e){return x.isFunction(e)?this.each(function(t){x(this).wrapIn' +
        'ner(e.call(this,t))}):this.each(function(){var t=x(this),n=t.con' +
        'tents();n.length?n.wrapAll(e):t.append(e)})},wrap:function(e){va' +
        'r t=x.isFunction(e);return this.each(function(n){x(this).wrapAll' +
        '(t?e.call(this,n):e)})},unwrap:function(){return this.parent().e' +
        'ach(function(){x.nodeName(this,"body")||x(this).replaceWith(this' +
        '.childNodes)}).end()}});var Pt,Rt,Wt,$t=/alpha\([^)]*\)/i,It=/op' +
        'acity\s*=\s*([^)]*)/,zt=/^(top|right|bottom|left)$/,Xt=/^(none|t' +
        'able(?!-c[ea]).+)/,Ut=/^margin/,Vt=RegExp("^("+w+")(.*)$","i"),Y' +
        't=RegExp("^("+w+")(?!px)[a-z%]+$","i"),Jt=RegExp("^([+-])=("+w+"' +
        ')","i"),Gt={BODY:"block"},Qt={position:"absolute",visibility:"hi' +
        'dden",display:"block"},Kt={letterSpacing:0,fontW')
    Left = 152
    Top = 272
  end
  object js5: TPageProducer
    HTMLDoc.Strings = (
      '/*! jQuery UI - v1.10.3 - 2013-06-30'
      '* http://jqueryui.com'
      
        '* Includes: jquery.ui.core.js, jquery.ui.widget.js, jquery.ui.ta' +
        'bs.js, jquery.ui.effect.js'
      
        '* Copyright 2013 jQuery Foundation and other contributors Licens' +
        'ed MIT */'
      ''
      
        '(function(e,t){function i(t,i){var a,n,r,o=t.nodeName.toLowerCas' +
        'e();return"area"===o?(a=t.parentNode,n=a.name,t.href&&n&&"map"==' +
        '=a.nodeName.toLowerCase()?(r=e("img[usemap=#"+n+"]")[0],!!r&&s(r' +
        ')):!1):(/input|select|textarea|button|object/.test(o)?!t.disable' +
        'd:"a"===o?t.href||i:i)&&s(t)}function s(t){return e.expr.filters' +
        '.visible(t)&&!e(t).parents().addBack().filter(function(){return"' +
        'hidden"===e.css(this,"visibility")}).length}var a=0,n=/^ui-id-\d' +
        '+$/;e.ui=e.ui||{},e.extend(e.ui,{version:"1.10.3",keyCode:{BACKS' +
        'PACE:8,COMMA:188,DELETE:46,DOWN:40,END:35,ENTER:13,ESCAPE:27,HOM' +
        'E:36,LEFT:37,NUMPAD_ADD:107,NUMPAD_DECIMAL:110,NUMPAD_DIVIDE:111' +
        ',NUMPAD_ENTER:108,NUMPAD_MULTIPLY:106,NUMPAD_SUBTRACT:109,PAGE_D' +
        'OWN:34,PAGE_UP:33,PERIOD:190,RIGHT:39,SPACE:32,TAB:9,UP:38}}),e.' +
        'fn.extend({focus:function(t){return function(i,s){return"number"' +
        '==typeof i?this.each(function(){var t=this;setTimeout(function()' +
        '{e(t).focus(),s&&s.call(t)},i)}):t.apply(this,arguments)}}(e.fn.' +
        'focus),scrollParent:function(){var t;return t=e.ui.ie&&/(static|' +
        'relative)/.test(this.css("position"))||/absolute/.test(this.css(' +
        '"position"))?this.parents().filter(function(){return/(relative|a' +
        'bsolute|fixed)/.test(e.css(this,"position"))&&/(auto|scroll)/.te' +
        'st(e.css(this,"overflow")+e.css(this,"overflow-y")+e.css(this,"o' +
        'verflow-x"))}).eq(0):this.parents().filter(function(){return/(au' +
        'to|scroll)/.test(e.css(this,"overflow")+e.css(this,"overflow-y")' +
        '+e.css(this,"overflow-x"))}).eq(0),/fixed/.test(this.css("positi' +
        'on"))||!t.length?e(document):t},zIndex:function(i){if(i!==t)retu' +
        'rn this.css("zIndex",i);if(this.length)for(var s,a,n=e(this[0]);' +
        'n.length&&n[0]!==document;){if(s=n.css("position"),("absolute"==' +
        '=s||"relative"===s||"fixed"===s)&&(a=parseInt(n.css("zIndex"),10' +
        '),!isNaN(a)&&0!==a))return a;n=n.parent()}return 0},uniqueId:fun' +
        'ction(){return this.each(function(){this.id||(this.id="ui-id-"+ ' +
        '++a)})},removeUniqueId:function(){return this.each(function(){n.' +
        'test(this.id)&&e(this).removeAttr("id")})}}),e.extend(e.expr[":"' +
        '],{data:e.expr.createPseudo?e.expr.createPseudo(function(t){retu' +
        'rn function(i){return!!e.data(i,t)}}):function(t,i,s){return!!e.' +
        'data(t,s[3])},focusable:function(t){return i(t,!isNaN(e.attr(t,"' +
        'tabindex")))},tabbable:function(t){var s=e.attr(t,"tabindex"),a=' +
        'isNaN(s);return(a||s>=0)&&i(t,!a)}}),e("<a>").outerWidth(1).jque' +
        'ry||e.each(["Width","Height"],function(i,s){function a(t,i,s,a){' +
        'return e.each(n,function(){i-=parseFloat(e.css(t,"padding"+this)' +
        ')||0,s&&(i-=parseFloat(e.css(t,"border"+this+"Width"))||0),a&&(i' +
        '-=parseFloat(e.css(t,"margin"+this))||0)}),i}var n="Width"===s?[' +
        '"Left","Right"]:["Top","Bottom"],r=s.toLowerCase(),o={innerWidth' +
        ':e.fn.innerWidth,innerHeight:e.fn.innerHeight,outerWidth:e.fn.ou' +
        'terWidth,outerHeight:e.fn.outerHeight};e.fn["inner"+s]=function(' +
        'i){return i===t?o["inner"+s].call(this):this.each(function(){e(t' +
        'his).css(r,a(this,i)+"px")})},e.fn["outer"+s]=function(t,i){retu' +
        'rn"number"!=typeof t?o["outer"+s].call(this,t):this.each(functio' +
        'n(){e(this).css(r,a(this,t,!0,i)+"px")})}}),e.fn.addBack||(e.fn.' +
        'addBack=function(e){return this.add(null==e?this.prevObject:this' +
        '.prevObject.filter(e))}),e("<a>").data("a-b","a").removeData("a-' +
        'b").data("a-b")&&(e.fn.removeData=function(t){return function(i)' +
        '{return arguments.length?t.call(this,e.camelCase(i)):t.call(this' +
        ')}}(e.fn.removeData)),e.ui.ie=!!/msie [\w.]+/.exec(navigator.use' +
        'rAgent.toLowerCase()),e.support.selectstart="onselectstart"in do' +
        'cument.createElement("div"),e.fn.extend({disableSelection:functi' +
        'on(){return this.bind((e.support.selectstart?"selectstart":"mous' +
        'edown")+".ui-disableSelection",function(e){e.preventDefault()})}' +
        ',enableSelection:function(){return this.unbind(".ui-disableSelec' +
        'tion")}}),e.extend(e.ui,{plugin:{add:function(t,i,s){var a,n=e.u' +
        'i[t].prototype;for(a in s)n.plugins[a]=n.plugins[a]||[],n.plugin' +
        's[a].push([i,s[a]])},call:function(e,t,i){var s,a=e.plugins[t];i' +
        'f(a&&e.element[0].parentNode&&11!==e.element[0].parentNode.nodeT' +
        'ype)for(s=0;a.length>s;s++)'
      
        'e.options[a[s][0]]&&a[s][1].apply(e.element,i)}},hasScroll:funct' +
        'ion(t,i){if("hidden"===e(t).css("overflow"))return!1;var s=i&&"l' +
        'eft"===i?"scrollLeft":"scrollTop",a=!1;return t[s]>0?!0:(t[s]=1,' +
        'a=t[s]>0,t[s]=0,a)}})})(jQuery);(function(e,t){var i=0,s=Array.p' +
        'rototype.slice,n=e.cleanData;e.cleanData=function(t){for(var i,s' +
        '=0;null!=(i=t[s]);s++)try{e(i).triggerHandler("remove")}catch(a)' +
        '{}n(t)},e.widget=function(i,s,n){var a,r,o,h,l={},u=i.split(".")' +
        '[0];i=i.split(".")[1],a=u+"-"+i,n||(n=s,s=e.Widget),e.expr[":"][' +
        'a.toLowerCase()]=function(t){return!!e.data(t,a)},e[u]=e[u]||{},' +
        'r=e[u][i],o=e[u][i]=function(e,i){return this._createWidget?(arg' +
        'uments.length&&this._createWidget(e,i),t):new o(e,i)},e.extend(o' +
        ',r,{version:n.version,_proto:e.extend({},n),_childConstructors:[' +
        ']}),h=new s,h.options=e.widget.extend({},h.options),e.each(n,fun' +
        'ction(i,n){return e.isFunction(n)?(l[i]=function(){var e=functio' +
        'n(){return s.prototype[i].apply(this,arguments)},t=function(e){r' +
        'eturn s.prototype[i].apply(this,e)};return function(){var i,s=th' +
        'is._super,a=this._superApply;return this._super=e,this._superApp' +
        'ly=t,i=n.apply(this,arguments),this._super=s,this._superApply=a,' +
        'i}}(),t):(l[i]=n,t)}),o.prototype=e.widget.extend(h,{widgetEvent' +
        'Prefix:r?h.widgetEventPrefix:i},l,{constructor:o,namespace:u,wid' +
        'getName:i,widgetFullName:a}),r?(e.each(r._childConstructors,func' +
        'tion(t,i){var s=i.prototype;e.widget(s.namespace+"."+s.widgetNam' +
        'e,o,i._proto)}),delete r._childConstructors):s._childConstructor' +
        's.push(o),e.widget.bridge(i,o)},e.widget.extend=function(i){for(' +
        'var n,a,r=s.call(arguments,1),o=0,h=r.length;h>o;o++)for(n in r[' +
        'o])a=r[o][n],r[o].hasOwnProperty(n)&&a!==t&&(i[n]=e.isPlainObjec' +
        't(a)?e.isPlainObject(i[n])?e.widget.extend({},i[n],a):e.widget.e' +
        'xtend({},a):a);return i},e.widget.bridge=function(i,n){var a=n.p' +
        'rototype.widgetFullName||i;e.fn[i]=function(r){var o="string"==t' +
        'ypeof r,h=s.call(arguments,1),l=this;return r=!o&&h.length?e.wid' +
        'get.extend.apply(null,[r].concat(h)):r,o?this.each(function(){va' +
        'r s,n=e.data(this,a);return n?e.isFunction(n[r])&&"_"!==r.charAt' +
        '(0)?(s=n[r].apply(n,h),s!==n&&s!==t?(l=s&&s.jquery?l.pushStack(s' +
        '.get()):s,!1):t):e.error("no such method '#39'"+r+"'#39' for "+i+" widge' +
        't instance"):e.error("cannot call methods on "+i+" prior to init' +
        'ialization; "+"attempted to call method '#39'"+r+"'#39'")}):this.each(fu' +
        'nction(){var t=e.data(this,a);t?t.option(r||{})._init():e.data(t' +
        'his,a,new n(r,this))}),l}},e.Widget=function(){},e.Widget._child' +
        'Constructors=[],e.Widget.prototype={widgetName:"widget",widgetEv' +
        'entPrefix:"",defaultElement:"<div>",options:{disabled:!1,create:' +
        'null},_createWidget:function(t,s){s=e(s||this.defaultElement||th' +
        'is)[0],this.element=e(s),this.uuid=i++,this.eventNamespace="."+t' +
        'his.widgetName+this.uuid,this.options=e.widget.extend({},this.op' +
        'tions,this._getCreateOptions(),t),this.bindings=e(),this.hoverab' +
        'le=e(),this.focusable=e(),s!==this&&(e.data(s,this.widgetFullNam' +
        'e,this),this._on(!0,this.element,{remove:function(e){e.target===' +
        's&&this.destroy()}}),this.document=e(s.style?s.ownerDocument:s.d' +
        'ocument||s),this.window=e(this.document[0].defaultView||this.doc' +
        'ument[0].parentWindow)),this._create(),this._trigger("create",nu' +
        'll,this._getCreateEventData()),this._init()},_getCreateOptions:e' +
        '.noop,_getCreateEventData:e.noop,_create:e.noop,_init:e.noop,des' +
        'troy:function(){this._destroy(),this.element.unbind(this.eventNa' +
        'mespace).removeData(this.widgetName).removeData(this.widgetFullN' +
        'ame).removeData(e.camelCase(this.widgetFullName)),this.widget().' +
        'unbind(this.eventNamespace).removeAttr("aria-disabled").removeCl' +
        'ass(this.widgetFullName+"-disabled "+"ui-state-disabled"),this.b' +
        'indings.unbind(this.eventNamespace),this.hoverable.removeClass("' +
        'ui-state-hover"),this.focusable.removeClass("ui-state-focus")},_' +
        'destroy:e.noop,widget:function(){return this.element},option:fun' +
        'ction(i,s){var n,a,r,o=i;if(0===arguments.length)return e.widget' +
        '.extend({},this.options);if("string"==typeof i)if(o={},n=i.split' +
        '("."),i=n.shift(),n.length){for(a=o[i]=e.widget.extend({},this.o' +
        'ptions[i]),r=0;n.length-1>r;r++)a[n[r]]=a[n'
      
        '[r]]||{},a=a[n[r]];if(i=n.pop(),s===t)return a[i]===t?null:a[i];' +
        'a[i]=s}else{if(s===t)return this.options[i]===t?null:this.option' +
        's[i];o[i]=s}return this._setOptions(o),this},_setOptions:functio' +
        'n(e){var t;for(t in e)this._setOption(t,e[t]);return this},_setO' +
        'ption:function(e,t){return this.options[e]=t,"disabled"===e&&(th' +
        'is.widget().toggleClass(this.widgetFullName+"-disabled ui-state-' +
        'disabled",!!t).attr("aria-disabled",t),this.hoverable.removeClas' +
        's("ui-state-hover"),this.focusable.removeClass("ui-state-focus")' +
        '),this},enable:function(){return this._setOption("disabled",!1)}' +
        ',disable:function(){return this._setOption("disabled",!0)},_on:f' +
        'unction(i,s,n){var a,r=this;"boolean"!=typeof i&&(n=s,s=i,i=!1),' +
        'n?(s=a=e(s),this.bindings=this.bindings.add(s)):(n=s,s=this.elem' +
        'ent,a=this.widget()),e.each(n,function(n,o){function h(){return ' +
        'i||r.options.disabled!==!0&&!e(this).hasClass("ui-state-disabled' +
        '")?("string"==typeof o?r[o]:o).apply(r,arguments):t}"string"!=ty' +
        'peof o&&(h.guid=o.guid=o.guid||h.guid||e.guid++);var l=n.match(/' +
        '^(\w+)\s*(.*)$/),u=l[1]+r.eventNamespace,c=l[2];c?a.delegate(c,u' +
        ',h):s.bind(u,h)})},_off:function(e,t){t=(t||"").split(" ").join(' +
        'this.eventNamespace+" ")+this.eventNamespace,e.unbind(t).undeleg' +
        'ate(t)},_delay:function(e,t){function i(){return("string"==typeo' +
        'f e?s[e]:e).apply(s,arguments)}var s=this;return setTimeout(i,t|' +
        '|0)},_hoverable:function(t){this.hoverable=this.hoverable.add(t)' +
        ',this._on(t,{mouseenter:function(t){e(t.currentTarget).addClass(' +
        '"ui-state-hover")},mouseleave:function(t){e(t.currentTarget).rem' +
        'oveClass("ui-state-hover")}})},_focusable:function(t){this.focus' +
        'able=this.focusable.add(t),this._on(t,{focusin:function(t){e(t.c' +
        'urrentTarget).addClass("ui-state-focus")},focusout:function(t){e' +
        '(t.currentTarget).removeClass("ui-state-focus")}})},_trigger:fun' +
        'ction(t,i,s){var n,a,r=this.options[t];if(s=s||{},i=e.Event(i),i' +
        '.type=(t===this.widgetEventPrefix?t:this.widgetEventPrefix+t).to' +
        'LowerCase(),i.target=this.element[0],a=i.originalEvent)for(n in ' +
        'a)n in i||(i[n]=a[n]);return this.element.trigger(i,s),!(e.isFun' +
        'ction(r)&&r.apply(this.element[0],[i].concat(s))===!1||i.isDefau' +
        'ltPrevented())}},e.each({show:"fadeIn",hide:"fadeOut"},function(' +
        't,i){e.Widget.prototype["_"+t]=function(s,n,a){"string"==typeof ' +
        'n&&(n={effect:n});var r,o=n?n===!0||"number"==typeof n?i:n.effec' +
        't||i:t;n=n||{},"number"==typeof n&&(n={duration:n}),r=!e.isEmpty' +
        'Object(n),n.complete=a,n.delay&&s.delay(n.delay),r&&e.effects&&e' +
        '.effects.effect[o]?s[t](n):o!==t&&s[o]?s[o](n.duration,n.easing,' +
        'a):s.queue(function(i){e(this)[t](),a&&a.call(s[0]),i()})}})})(j' +
        'Query);(function(t,e){function i(){return++n}function s(t){retur' +
        'n t.hash.length>1&&decodeURIComponent(t.href.replace(a,""))===de' +
        'codeURIComponent(location.href.replace(a,""))}var n=0,a=/#.*$/;t' +
        '.widget("ui.tabs",{version:"1.10.3",delay:300,options:{active:nu' +
        'll,collapsible:!1,event:"click",heightStyle:"content",hide:null,' +
        'show:null,activate:null,beforeActivate:null,beforeLoad:null,load' +
        ':null},_create:function(){var e=this,i=this.options;this.running' +
        '=!1,this.element.addClass("ui-tabs ui-widget ui-widget-content u' +
        'i-corner-all").toggleClass("ui-tabs-collapsible",i.collapsible).' +
        'delegate(".ui-tabs-nav > li","mousedown"+this.eventNamespace,fun' +
        'ction(e){t(this).is(".ui-state-disabled")&&e.preventDefault()}).' +
        'delegate(".ui-tabs-anchor","focus"+this.eventNamespace,function(' +
        '){t(this).closest("li").is(".ui-state-disabled")&&this.blur()}),' +
        'this._processTabs(),i.active=this._initialActive(),t.isArray(i.d' +
        'isabled)&&(i.disabled=t.unique(i.disabled.concat(t.map(this.tabs' +
        '.filter(".ui-state-disabled"),function(t){return e.tabs.index(t)' +
        '}))).sort()),this.active=this.options.active!==!1&&this.anchors.' +
        'length?this._findActive(i.active):t(),this._refresh(),this.activ' +
        'e.length&&this.load(i.active)},_initialActive:function(){var i=t' +
        'his.options.active,s=this.options.collapsible,n=location.hash.su' +
        'bstring(1);return null===i&&(n&&this.tabs.each(function(s,a){ret' +
        'urn t(a).attr("aria-controls")===n?(i=s,!1):e}),null===i&&(i=thi' +
        's.tabs.index(this.tabs.filter(".ui-tabs-active"))),(null===i||-1'
      
        '===i)&&(i=this.tabs.length?0:!1)),i!==!1&&(i=this.tabs.index(thi' +
        's.tabs.eq(i)),-1===i&&(i=s?!1:0)),!s&&i===!1&&this.anchors.lengt' +
        'h&&(i=0),i},_getCreateEventData:function(){return{tab:this.activ' +
        'e,panel:this.active.length?this._getPanelForTab(this.active):t()' +
        '}},_tabKeydown:function(i){var s=t(this.document[0].activeElemen' +
        't).closest("li"),n=this.tabs.index(s),a=!0;if(!this._handlePageN' +
        'av(i)){switch(i.keyCode){case t.ui.keyCode.RIGHT:case t.ui.keyCo' +
        'de.DOWN:n++;break;case t.ui.keyCode.UP:case t.ui.keyCode.LEFT:a=' +
        '!1,n--;break;case t.ui.keyCode.END:n=this.anchors.length-1;break' +
        ';case t.ui.keyCode.HOME:n=0;break;case t.ui.keyCode.SPACE:return' +
        ' i.preventDefault(),clearTimeout(this.activating),this._activate' +
        '(n),e;case t.ui.keyCode.ENTER:return i.preventDefault(),clearTim' +
        'eout(this.activating),this._activate(n===this.options.active?!1:' +
        'n),e;default:return}i.preventDefault(),clearTimeout(this.activat' +
        'ing),n=this._focusNextTab(n,a),i.ctrlKey||(s.attr("aria-selected' +
        '","false"),this.tabs.eq(n).attr("aria-selected","true"),this.act' +
        'ivating=this._delay(function(){this.option("active",n)},this.del' +
        'ay))}},_panelKeydown:function(e){this._handlePageNav(e)||e.ctrlK' +
        'ey&&e.keyCode===t.ui.keyCode.UP&&(e.preventDefault(),this.active' +
        '.focus())},_handlePageNav:function(i){return i.altKey&&i.keyCode' +
        '===t.ui.keyCode.PAGE_UP?(this._activate(this._focusNextTab(this.' +
        'options.active-1,!1)),!0):i.altKey&&i.keyCode===t.ui.keyCode.PAG' +
        'E_DOWN?(this._activate(this._focusNextTab(this.options.active+1,' +
        '!0)),!0):e},_findNextTab:function(e,i){function s(){return e>n&&' +
        '(e=0),0>e&&(e=n),e}for(var n=this.tabs.length-1;-1!==t.inArray(s' +
        '(),this.options.disabled);)e=i?e+1:e-1;return e},_focusNextTab:f' +
        'unction(t,e){return t=this._findNextTab(t,e),this.tabs.eq(t).foc' +
        'us(),t},_setOption:function(t,i){return"active"===t?(this._activ' +
        'ate(i),e):"disabled"===t?(this._setupDisabled(i),e):(this._super' +
        '(t,i),"collapsible"===t&&(this.element.toggleClass("ui-tabs-coll' +
        'apsible",i),i||this.options.active!==!1||this._activate(0)),"eve' +
        'nt"===t&&this._setupEvents(i),"heightStyle"===t&&this._setupHeig' +
        'htStyle(i),e)},_tabId:function(t){return t.attr("aria-controls")' +
        '||"ui-tabs-"+i()},_sanitizeSelector:function(t){return t?t.repla' +
        'ce(/[!"$%&'#39'()*+,.\/:;<=>?@\[\]\^`{|}~]/g,"\\$&"):""},refresh:fun' +
        'ction(){var e=this.options,i=this.tablist.children(":has(a[href]' +
        ')");e.disabled=t.map(i.filter(".ui-state-disabled"),function(t){' +
        'return i.index(t)}),this._processTabs(),e.active!==!1&&this.anch' +
        'ors.length?this.active.length&&!t.contains(this.tablist[0],this.' +
        'active[0])?this.tabs.length===e.disabled.length?(e.active=!1,thi' +
        's.active=t()):this._activate(this._findNextTab(Math.max(0,e.acti' +
        've-1),!1)):e.active=this.tabs.index(this.active):(e.active=!1,th' +
        'is.active=t()),this._refresh()},_refresh:function(){this._setupD' +
        'isabled(this.options.disabled),this._setupEvents(this.options.ev' +
        'ent),this._setupHeightStyle(this.options.heightStyle),this.tabs.' +
        'not(this.active).attr({"aria-selected":"false",tabIndex:-1}),thi' +
        's.panels.not(this._getPanelForTab(this.active)).hide().attr({"ar' +
        'ia-expanded":"false","aria-hidden":"true"}),this.active.length?(' +
        'this.active.addClass("ui-tabs-active ui-state-active").attr({"ar' +
        'ia-selected":"true",tabIndex:0}),this._getPanelForTab(this.activ' +
        'e).show().attr({"aria-expanded":"true","aria-hidden":"false"})):' +
        'this.tabs.eq(0).attr("tabIndex",0)},_processTabs:function(){var ' +
        'e=this;this.tablist=this._getList().addClass("ui-tabs-nav ui-hel' +
        'per-reset ui-helper-clearfix ui-widget-header ui-corner-all").at' +
        'tr("role","tablist"),this.tabs=this.tablist.find("> li:has(a[hre' +
        'f])").addClass("ui-state-default ui-corner-top").attr({role:"tab' +
        '",tabIndex:-1}),this.anchors=this.tabs.map(function(){return t("' +
        'a",this)[0]}).addClass("ui-tabs-anchor").attr({role:"presentatio' +
        'n",tabIndex:-1}),this.panels=t(),this.anchors.each(function(i,n)' +
        '{var a,o,r,h=t(n).uniqueId().attr("id"),l=t(n).closest("li"),u=l' +
        '.attr("aria-controls");s(n)?(a=n.hash,o=e.element.find(e._saniti' +
        'zeSelector(a))):(r=e._tabId(l),a="#"+r,o=e.element.find(a),o.len' +
        'gth||(o=e._createPanel(r),o.insertAfter(e.panels[i-1]'
      
        '||e.tablist)),o.attr("aria-live","polite")),o.length&&(e.panels=' +
        'e.panels.add(o)),u&&l.data("ui-tabs-aria-controls",u),l.attr({"a' +
        'ria-controls":a.substring(1),"aria-labelledby":h}),o.attr("aria-' +
        'labelledby",h)}),this.panels.addClass("ui-tabs-panel ui-widget-c' +
        'ontent ui-corner-bottom").attr("role","tabpanel")},_getList:func' +
        'tion(){return this.element.find("ol,ul").eq(0)},_createPanel:fun' +
        'ction(e){return t("<div>").attr("id",e).addClass("ui-tabs-panel ' +
        'ui-widget-content ui-corner-bottom").data("ui-tabs-destroy",!0)}' +
        ',_setupDisabled:function(e){t.isArray(e)&&(e.length?e.length===t' +
        'his.anchors.length&&(e=!0):e=!1);for(var i,s=0;i=this.tabs[s];s+' +
        '+)e===!0||-1!==t.inArray(s,e)?t(i).addClass("ui-state-disabled")' +
        '.attr("aria-disabled","true"):t(i).removeClass("ui-state-disable' +
        'd").removeAttr("aria-disabled");this.options.disabled=e},_setupE' +
        'vents:function(e){var i={click:function(t){t.preventDefault()}};' +
        'e&&t.each(e.split(" "),function(t,e){i[e]="_eventHandler"}),this' +
        '._off(this.anchors.add(this.tabs).add(this.panels)),this._on(thi' +
        's.anchors,i),this._on(this.tabs,{keydown:"_tabKeydown"}),this._o' +
        'n(this.panels,{keydown:"_panelKeydown"}),this._focusable(this.ta' +
        'bs),this._hoverable(this.tabs)},_setupHeightStyle:function(e){va' +
        'r i,s=this.element.parent();"fill"===e?(i=s.height(),i-=this.ele' +
        'ment.outerHeight()-this.element.height(),this.element.siblings("' +
        ':visible").each(function(){var e=t(this),s=e.css("position");"ab' +
        'solute"!==s&&"fixed"!==s&&(i-=e.outerHeight(!0))}),this.element.' +
        'children().not(this.panels).each(function(){i-=t(this).outerHeig' +
        'ht(!0)}),this.panels.each(function(){t(this).height(Math.max(0,i' +
        '-t(this).innerHeight()+t(this).height()))}).css("overflow","auto' +
        '")):"auto"===e&&(i=0,this.panels.each(function(){i=Math.max(i,t(' +
        'this).height("").height())}).height(i))},_eventHandler:function(' +
        'e){var i=this.options,s=this.active,n=t(e.currentTarget),a=n.clo' +
        'sest("li"),o=a[0]===s[0],r=o&&i.collapsible,h=r?t():this._getPan' +
        'elForTab(a),l=s.length?this._getPanelForTab(s):t(),u={oldTab:s,o' +
        'ldPanel:l,newTab:r?t():a,newPanel:h};e.preventDefault(),a.hasCla' +
        'ss("ui-state-disabled")||a.hasClass("ui-tabs-loading")||this.run' +
        'ning||o&&!i.collapsible||this._trigger("beforeActivate",e,u)===!' +
        '1||(i.active=r?!1:this.tabs.index(a),this.active=o?t():a,this.xh' +
        'r&&this.xhr.abort(),l.length||h.length||t.error("jQuery UI Tabs:' +
        ' Mismatching fragment identifier."),h.length&&this.load(this.tab' +
        's.index(a),e),this._toggle(e,u))},_toggle:function(e,i){function' +
        ' s(){a.running=!1,a._trigger("activate",e,i)}function n(){i.newT' +
        'ab.closest("li").addClass("ui-tabs-active ui-state-active"),o.le' +
        'ngth&&a.options.show?a._show(o,a.options.show,s):(o.show(),s())}' +
        'var a=this,o=i.newPanel,r=i.oldPanel;this.running=!0,r.length&&t' +
        'his.options.hide?this._hide(r,this.options.hide,function(){i.old' +
        'Tab.closest("li").removeClass("ui-tabs-active ui-state-active"),' +
        'n()}):(i.oldTab.closest("li").removeClass("ui-tabs-active ui-sta' +
        'te-active"),r.hide(),n()),r.attr({"aria-expanded":"false","aria-' +
        'hidden":"true"}),i.oldTab.attr("aria-selected","false"),o.length' +
        '&&r.length?i.oldTab.attr("tabIndex",-1):o.length&&this.tabs.filt' +
        'er(function(){return 0===t(this).attr("tabIndex")}).attr("tabInd' +
        'ex",-1),o.attr({"aria-expanded":"true","aria-hidden":"false"}),i' +
        '.newTab.attr({"aria-selected":"true",tabIndex:0})},_activate:fun' +
        'ction(e){var i,s=this._findActive(e);s[0]!==this.active[0]&&(s.l' +
        'ength||(s=this.active),i=s.find(".ui-tabs-anchor")[0],this._even' +
        'tHandler({target:i,currentTarget:i,preventDefault:t.noop}))},_fi' +
        'ndActive:function(e){return e===!1?t():this.tabs.eq(e)},_getInde' +
        'x:function(t){return"string"==typeof t&&(t=this.anchors.index(th' +
        'is.anchors.filter("[href$='#39'"+t+"'#39']"))),t},_destroy:function(){th' +
        'is.xhr&&this.xhr.abort(),this.element.removeClass("ui-tabs ui-wi' +
        'dget ui-widget-content ui-corner-all ui-tabs-collapsible"),this.' +
        'tablist.removeClass("ui-tabs-nav ui-helper-reset ui-helper-clear' +
        'fix ui-widget-header ui-corner-all").removeAttr("role"),this.anc' +
        'hors.removeClass("ui-tabs-anchor").removeAttr("role").removeAttr' +
        '("tabIndex").removeUniqueId(),this.tabs.add'
      
        '(this.panels).each(function(){t.data(this,"ui-tabs-destroy")?t(t' +
        'his).remove():t(this).removeClass("ui-state-default ui-state-act' +
        'ive ui-state-disabled ui-corner-top ui-corner-bottom ui-widget-c' +
        'ontent ui-tabs-active ui-tabs-panel").removeAttr("tabIndex").rem' +
        'oveAttr("aria-live").removeAttr("aria-busy").removeAttr("aria-se' +
        'lected").removeAttr("aria-labelledby").removeAttr("aria-hidden")' +
        '.removeAttr("aria-expanded").removeAttr("role")}),this.tabs.each' +
        '(function(){var e=t(this),i=e.data("ui-tabs-aria-controls");i?e.' +
        'attr("aria-controls",i).removeData("ui-tabs-aria-controls"):e.re' +
        'moveAttr("aria-controls")}),this.panels.show(),"content"!==this.' +
        'options.heightStyle&&this.panels.css("height","")},enable:functi' +
        'on(i){var s=this.options.disabled;s!==!1&&(i===e?s=!1:(i=this._g' +
        'etIndex(i),s=t.isArray(s)?t.map(s,function(t){return t!==i?t:nul' +
        'l}):t.map(this.tabs,function(t,e){return e!==i?e:null})),this._s' +
        'etupDisabled(s))},disable:function(i){var s=this.options.disable' +
        'd;if(s!==!0){if(i===e)s=!0;else{if(i=this._getIndex(i),-1!==t.in' +
        'Array(i,s))return;s=t.isArray(s)?t.merge([i],s).sort():[i]}this.' +
        '_setupDisabled(s)}},load:function(e,i){e=this._getIndex(e);var n' +
        '=this,a=this.tabs.eq(e),o=a.find(".ui-tabs-anchor"),r=this._getP' +
        'anelForTab(a),h={tab:a,panel:r};s(o[0])||(this.xhr=t.ajax(this._' +
        'ajaxSettings(o,i,h)),this.xhr&&"canceled"!==this.xhr.statusText&' +
        '&(a.addClass("ui-tabs-loading"),r.attr("aria-busy","true"),this.' +
        'xhr.success(function(t){setTimeout(function(){r.html(t),n._trigg' +
        'er("load",i,h)},1)}).complete(function(t,e){setTimeout(function(' +
        '){"abort"===e&&n.panels.stop(!1,!0),a.removeClass("ui-tabs-loadi' +
        'ng"),r.removeAttr("aria-busy"),t===n.xhr&&delete n.xhr},1)})))},' +
        '_ajaxSettings:function(e,i,s){var n=this;return{url:e.attr("href' +
        '"),beforeSend:function(e,a){return n._trigger("beforeLoad",i,t.e' +
        'xtend({jqXHR:e,ajaxSettings:a},s))}}},_getPanelForTab:function(e' +
        '){var i=t(e).attr("aria-controls");return this.element.find(this' +
        '._sanitizeSelector("#"+i))}})})(jQuery);(function(t,e){var i="ui' +
        '-effects-";t.effects={effect:{}},function(t,e){function i(t,e,i)' +
        '{var s=u[e.type]||{};return null==t?i||!e.def?null:e.def:(t=s.fl' +
        'oor?~~t:parseFloat(t),isNaN(t)?e.def:s.mod?(t+s.mod)%s.mod:0>t?0' +
        ':t>s.max?s.max:t)}function s(i){var s=l(),n=s._rgba=[];return i=' +
        'i.toLowerCase(),f(h,function(t,a){var o,r=a.re.exec(i),h=r&&a.pa' +
        'rse(r),l=a.space||"rgba";return h?(o=s[l](h),s[c[l].cache]=o[c[l' +
        '].cache],n=s._rgba=o._rgba,!1):e}),n.length?("0,0,0,0"===n.join(' +
        ')&&t.extend(n,a.transparent),s):a[i]}function n(t,e,i){return i=' +
        '(i+1)%1,1>6*i?t+6*(e-t)*i:1>2*i?e:2>3*i?t+6*(e-t)*(2/3-i):t}var ' +
        'a,o="backgroundColor borderBottomColor borderLeftColor borderRig' +
        'htColor borderTopColor color columnRuleColor outlineColor textDe' +
        'corationColor textEmphasisColor",r=/^([\-+])=\s*(\d+\.?\d*)/,h=[' +
        '{re:/rgba?\(\s*(\d{1,3})\s*,\s*(\d{1,3})\s*,\s*(\d{1,3})\s*(?:,\' +
        's*(\d?(?:\.\d+)?)\s*)?\)/,parse:function(t){return[t[1],t[2],t[3' +
        '],t[4]]}},{re:/rgba?\(\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)' +
        '\%\s*,\s*(\d+(?:\.\d+)?)\%\s*(?:,\s*(\d?(?:\.\d+)?)\s*)?\)/,pars' +
        'e:function(t){return[2.55*t[1],2.55*t[2],2.55*t[3],t[4]]}},{re:/' +
        '#([a-f0-9]{2})([a-f0-9]{2})([a-f0-9]{2})/,parse:function(t){retu' +
        'rn[parseInt(t[1],16),parseInt(t[2],16),parseInt(t[3],16)]}},{re:' +
        '/#([a-f0-9])([a-f0-9])([a-f0-9])/,parse:function(t){return[parse' +
        'Int(t[1]+t[1],16),parseInt(t[2]+t[2],16),parseInt(t[3]+t[3],16)]' +
        '}},{re:/hsla?\(\s*(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)\%\s*,\s*' +
        '(\d+(?:\.\d+)?)\%\s*(?:,\s*(\d?(?:\.\d+)?)\s*)?\)/,space:"hsla",' +
        'parse:function(t){return[t[1],t[2]/100,t[3]/100,t[4]]}}],l=t.Col' +
        'or=function(e,i,s,n){return new t.Color.fn.parse(e,i,s,n)},c={rg' +
        'ba:{props:{red:{idx:0,type:"byte"},green:{idx:1,type:"byte"},blu' +
        'e:{idx:2,type:"byte"}}},hsla:{props:{hue:{idx:0,type:"degrees"},' +
        'saturation:{idx:1,type:"percent"},lightness:{idx:2,type:"percent' +
        '"}}}},u={"byte":{floor:!0,max:255},percent:{max:1},degrees:{mod:' +
        '360,floor:!0}},d=l.support={},p=t("<p>")[0],f=t.each;p.style.css' +
        'Text="background-color:rgba(1,1,1,.5)",d.rgba=p.style.background' +
        'Color.indexOf("rgba")>-1,f(c,function(t,e)'
      
        '{e.cache="_"+t,e.props.alpha={idx:3,type:"percent",def:1}}),l.fn' +
        '=t.extend(l.prototype,{parse:function(n,o,r,h){if(n===e)return t' +
        'his._rgba=[null,null,null,null],this;(n.jquery||n.nodeType)&&(n=' +
        't(n).css(o),o=e);var u=this,d=t.type(n),p=this._rgba=[];return o' +
        '!==e&&(n=[n,o,r,h],d="array"),"string"===d?this.parse(s(n)||a._d' +
        'efault):"array"===d?(f(c.rgba.props,function(t,e){p[e.idx]=i(n[e' +
        '.idx],e)}),this):"object"===d?(n instanceof l?f(c,function(t,e){' +
        'n[e.cache]&&(u[e.cache]=n[e.cache].slice())}):f(c,function(e,s){' +
        'var a=s.cache;f(s.props,function(t,e){if(!u[a]&&s.to){if("alpha"' +
        '===t||null==n[t])return;u[a]=s.to(u._rgba)}u[a][e.idx]=i(n[t],e,' +
        '!0)}),u[a]&&0>t.inArray(null,u[a].slice(0,3))&&(u[a][3]=1,s.from' +
        '&&(u._rgba=s.from(u[a])))}),this):e},is:function(t){var i=l(t),s' +
        '=!0,n=this;return f(c,function(t,a){var o,r=i[a.cache];return r&' +
        '&(o=n[a.cache]||a.to&&a.to(n._rgba)||[],f(a.props,function(t,i){' +
        'return null!=r[i.idx]?s=r[i.idx]===o[i.idx]:e})),s}),s},_space:f' +
        'unction(){var t=[],e=this;return f(c,function(i,s){e[s.cache]&&t' +
        '.push(i)}),t.pop()},transition:function(t,e){var s=l(t),n=s._spa' +
        'ce(),a=c[n],o=0===this.alpha()?l("transparent"):this,r=o[a.cache' +
        ']||a.to(o._rgba),h=r.slice();return s=s[a.cache],f(a.props,funct' +
        'ion(t,n){var a=n.idx,o=r[a],l=s[a],c=u[n.type]||{};null!==l&&(nu' +
        'll===o?h[a]=l:(c.mod&&(l-o>c.mod/2?o+=c.mod:o-l>c.mod/2&&(o-=c.m' +
        'od)),h[a]=i((l-o)*e+o,n)))}),this[n](h)},blend:function(e){if(1=' +
        '==this._rgba[3])return this;var i=this._rgba.slice(),s=i.pop(),n' +
        '=l(e)._rgba;return l(t.map(i,function(t,e){return(1-s)*n[e]+s*t}' +
        '))},toRgbaString:function(){var e="rgba(",i=t.map(this._rgba,fun' +
        'ction(t,e){return null==t?e>2?1:0:t});return 1===i[3]&&(i.pop(),' +
        'e="rgb("),e+i.join()+")"},toHslaString:function(){var e="hsla(",' +
        'i=t.map(this.hsla(),function(t,e){return null==t&&(t=e>2?1:0),e&' +
        '&3>e&&(t=Math.round(100*t)+"%"),t});return 1===i[3]&&(i.pop(),e=' +
        '"hsl("),e+i.join()+")"},toHexString:function(e){var i=this._rgba' +
        '.slice(),s=i.pop();return e&&i.push(~~(255*s)),"#"+t.map(i,funct' +
        'ion(t){return t=(t||0).toString(16),1===t.length?"0"+t:t}).join(' +
        '"")},toString:function(){return 0===this._rgba[3]?"transparent":' +
        'this.toRgbaString()}}),l.fn.parse.prototype=l.fn,c.hsla.to=funct' +
        'ion(t){if(null==t[0]||null==t[1]||null==t[2])return[null,null,nu' +
        'll,t[3]];var e,i,s=t[0]/255,n=t[1]/255,a=t[2]/255,o=t[3],r=Math.' +
        'max(s,n,a),h=Math.min(s,n,a),l=r-h,c=r+h,u=.5*c;return e=h===r?0' +
        ':s===r?60*(n-a)/l+360:n===r?60*(a-s)/l+120:60*(s-n)/l+240,i=0===' +
        'l?0:.5>=u?l/c:l/(2-c),[Math.round(e)%360,i,u,null==o?1:o]},c.hsl' +
        'a.from=function(t){if(null==t[0]||null==t[1]||null==t[2])return[' +
        'null,null,null,t[3]];var e=t[0]/360,i=t[1],s=t[2],a=t[3],o=.5>=s' +
        '?s*(1+i):s+i-s*i,r=2*s-o;return[Math.round(255*n(r,o,e+1/3)),Mat' +
        'h.round(255*n(r,o,e)),Math.round(255*n(r,o,e-1/3)),a]},f(c,funct' +
        'ion(s,n){var a=n.props,o=n.cache,h=n.to,c=n.from;l.fn[s]=functio' +
        'n(s){if(h&&!this[o]&&(this[o]=h(this._rgba)),s===e)return this[o' +
        '].slice();var n,r=t.type(s),u="array"===r||"object"===r?s:argume' +
        'nts,d=this[o].slice();return f(a,function(t,e){var s=u["object"=' +
        '==r?t:e.idx];null==s&&(s=d[e.idx]),d[e.idx]=i(s,e)}),c?(n=l(c(d)' +
        '),n[o]=d,n):l(d)},f(a,function(e,i){l.fn[e]||(l.fn[e]=function(n' +
        '){var a,o=t.type(n),h="alpha"===e?this._hsla?"hsla":"rgba":s,l=t' +
        'his[h](),c=l[i.idx];return"undefined"===o?c:("function"===o&&(n=' +
        'n.call(this,c),o=t.type(n)),null==n&&i.empty?this:("string"===o&' +
        '&(a=r.exec(n),a&&(n=c+parseFloat(a[2])*("+"===a[1]?1:-1))),l[i.i' +
        'dx]=n,this[h](l)))})})}),l.hook=function(e){var i=e.split(" ");f' +
        '(i,function(e,i){t.cssHooks[i]={set:function(e,n){var a,o,r="";i' +
        'f("transparent"!==n&&("string"!==t.type(n)||(a=s(n)))){if(n=l(a|' +
        '|n),!d.rgba&&1!==n._rgba[3]){for(o="backgroundColor"===i?e.paren' +
        'tNode:e;(""===r||"transparent"===r)&&o&&o.style;)try{r=t.css(o,"' +
        'backgroundColor"),o=o.parentNode}catch(h){}n=n.blend(r&&"transpa' +
        'rent"!==r?r:"_default")}n=n.toRgbaString()}try{e.style[i]=n}catc' +
        'h(h){}}},t.fx.step[i]=function(e){e.colorInit||(e.start=l(e.elem' +
        ',i),e.end=l(e.end),e.colorInit=!0),t.cssHooks[i].set(e.elem,e.st' +
        'art.transition(e.end,e.pos))}})},l.hook(o),t.cssHooks.borderColo' +
        'r='
      
        '{expand:function(t){var e={};return f(["Top","Right","Bottom","L' +
        'eft"],function(i,s){e["border"+s+"Color"]=t}),e}},a=t.Color.name' +
        's={aqua:"#00ffff",black:"#000000",blue:"#0000ff",fuchsia:"#ff00f' +
        'f",gray:"#808080",green:"#008000",lime:"#00ff00",maroon:"#800000' +
        '",navy:"#000080",olive:"#808000",purple:"#800080",red:"#ff0000",' +
        'silver:"#c0c0c0",teal:"#008080",white:"#ffffff",yellow:"#ffff00"' +
        ',transparent:[null,null,null,0],_default:"#ffffff"}}(jQuery),fun' +
        'ction(){function i(e){var i,s,n=e.ownerDocument.defaultView?e.ow' +
        'nerDocument.defaultView.getComputedStyle(e,null):e.currentStyle,' +
        'a={};if(n&&n.length&&n[0]&&n[n[0]])for(s=n.length;s--;)i=n[s],"s' +
        'tring"==typeof n[i]&&(a[t.camelCase(i)]=n[i]);else for(i in n)"s' +
        'tring"==typeof n[i]&&(a[i]=n[i]);return a}function s(e,i){var s,' +
        'n,o={};for(s in i)n=i[s],e[s]!==n&&(a[s]||(t.fx.step[s]||!isNaN(' +
        'parseFloat(n)))&&(o[s]=n));return o}var n=["add","remove","toggl' +
        'e"],a={border:1,borderBottom:1,borderColor:1,borderLeft:1,border' +
        'Right:1,borderTop:1,borderWidth:1,margin:1,padding:1};t.each(["b' +
        'orderLeftStyle","borderRightStyle","borderBottomStyle","borderTo' +
        'pStyle"],function(e,i){t.fx.step[i]=function(t){("none"!==t.end&' +
        '&!t.setAttr||1===t.pos&&!t.setAttr)&&(jQuery.style(t.elem,i,t.en' +
        'd),t.setAttr=!0)}}),t.fn.addBack||(t.fn.addBack=function(t){retu' +
        'rn this.add(null==t?this.prevObject:this.prevObject.filter(t))})' +
        ',t.effects.animateClass=function(e,a,o,r){var h=t.speed(a,o,r);r' +
        'eturn this.queue(function(){var a,o=t(this),r=o.attr("class")||"' +
        '",l=h.children?o.find("*").addBack():o;l=l.map(function(){var e=' +
        't(this);return{el:e,start:i(this)}}),a=function(){t.each(n,funct' +
        'ion(t,i){e[i]&&o[i+"Class"](e[i])})},a(),l=l.map(function(){retu' +
        'rn this.end=i(this.el[0]),this.diff=s(this.start,this.end),this}' +
        '),o.attr("class",r),l=l.map(function(){var e=this,i=t.Deferred()' +
        ',s=t.extend({},h,{queue:!1,complete:function(){i.resolve(e)}});r' +
        'eturn this.el.animate(this.diff,s),i.promise()}),t.when.apply(t,' +
        'l.get()).done(function(){a(),t.each(arguments,function(){var e=t' +
        'his.el;t.each(this.diff,function(t){e.css(t,"")})}),h.complete.c' +
        'all(o[0])})})},t.fn.extend({addClass:function(e){return function' +
        '(i,s,n,a){return s?t.effects.animateClass.call(this,{add:i},s,n,' +
        'a):e.apply(this,arguments)}}(t.fn.addClass),removeClass:function' +
        '(e){return function(i,s,n,a){return arguments.length>1?t.effects' +
        '.animateClass.call(this,{remove:i},s,n,a):e.apply(this,arguments' +
        ')}}(t.fn.removeClass),toggleClass:function(i){return function(s,' +
        'n,a,o,r){return"boolean"==typeof n||n===e?a?t.effects.animateCla' +
        'ss.call(this,n?{add:s}:{remove:s},a,o,r):i.apply(this,arguments)' +
        ':t.effects.animateClass.call(this,{toggle:s},n,a,o)}}(t.fn.toggl' +
        'eClass),switchClass:function(e,i,s,n,a){return t.effects.animate' +
        'Class.call(this,{add:i,remove:e},s,n,a)}})}(),function(){functio' +
        'n s(e,i,s,n){return t.isPlainObject(e)&&(i=e,e=e.effect),e={effe' +
        'ct:e},null==i&&(i={}),t.isFunction(i)&&(n=i,s=null,i={}),("numbe' +
        'r"==typeof i||t.fx.speeds[i])&&(n=s,s=i,i={}),t.isFunction(s)&&(' +
        'n=s,s=null),i&&t.extend(e,i),s=s||i.duration,e.duration=t.fx.off' +
        '?0:"number"==typeof s?s:s in t.fx.speeds?t.fx.speeds[s]:t.fx.spe' +
        'eds._default,e.complete=n||i.complete,e}function n(e){return!e||' +
        '"number"==typeof e||t.fx.speeds[e]?!0:"string"!=typeof e||t.effe' +
        'cts.effect[e]?t.isFunction(e)?!0:"object"!=typeof e||e.effect?!1' +
        ':!0:!0}t.extend(t.effects,{version:"1.10.3",save:function(t,e){f' +
        'or(var s=0;e.length>s;s++)null!==e[s]&&t.data(i+e[s],t[0].style[' +
        'e[s]])},restore:function(t,s){var n,a;for(a=0;s.length>a;a++)nul' +
        'l!==s[a]&&(n=t.data(i+s[a]),n===e&&(n=""),t.css(s[a],n))},setMod' +
        'e:function(t,e){return"toggle"===e&&(e=t.is(":hidden")?"show":"h' +
        'ide"),e},getBaseline:function(t,e){var i,s;switch(t[0]){case"top' +
        '":i=0;break;case"middle":i=.5;break;case"bottom":i=1;break;defau' +
        'lt:i=t[0]/e.height}switch(t[1]){case"left":s=0;break;case"center' +
        '":s=.5;break;case"right":s=1;break;default:s=t[1]/e.width}return' +
        '{x:s,y:i}},createWrapper:function(e){if(e.parent().is(".ui-effec' +
        'ts-wrapper"))return e.parent();var i={width:e.outerWidth(!0),hei' +
        'ght:e.outerHeight(!0),"float":e.css("float")},s=t("<div>'
      
        '</div>").addClass("ui-effects-wrapper").css({fontSize:"100%",bac' +
        'kground:"transparent",border:"none",margin:0,padding:0}),n={widt' +
        'h:e.width(),height:e.height()},a=document.activeElement;try{a.id' +
        '}catch(o){a=document.body}return e.wrap(s),(e[0]===a||t.contains' +
        '(e[0],a))&&t(a).focus(),s=e.parent(),"static"===e.css("position"' +
        ')?(s.css({position:"relative"}),e.css({position:"relative"})):(t' +
        '.extend(i,{position:e.css("position"),zIndex:e.css("z-index")}),' +
        't.each(["top","left","bottom","right"],function(t,s){i[s]=e.css(' +
        's),isNaN(parseInt(i[s],10))&&(i[s]="auto")}),e.css({position:"re' +
        'lative",top:0,left:0,right:"auto",bottom:"auto"})),e.css(n),s.cs' +
        's(i).show()},removeWrapper:function(e){var i=document.activeElem' +
        'ent;return e.parent().is(".ui-effects-wrapper")&&(e.parent().rep' +
        'laceWith(e),(e[0]===i||t.contains(e[0],i))&&t(i).focus()),e},set' +
        'Transition:function(e,i,s,n){return n=n||{},t.each(i,function(t,' +
        'i){var a=e.cssUnit(i);a[0]>0&&(n[i]=a[0]*s+a[1])}),n}}),t.fn.ext' +
        'end({effect:function(){function e(e){function s(){t.isFunction(a' +
        ')&&a.call(n[0]),t.isFunction(e)&&e()}var n=t(this),a=i.complete,' +
        'r=i.mode;(n.is(":hidden")?"hide"===r:"show"===r)?(n[r](),s()):o.' +
        'call(n[0],i,s)}var i=s.apply(this,arguments),n=i.mode,a=i.queue,' +
        'o=t.effects.effect[i.effect];return t.fx.off||!o?n?this[n](i.dur' +
        'ation,i.complete):this.each(function(){i.complete&&i.complete.ca' +
        'll(this)}):a===!1?this.each(e):this.queue(a||"fx",e)},show:funct' +
        'ion(t){return function(e){if(n(e))return t.apply(this,arguments)' +
        ';var i=s.apply(this,arguments);return i.mode="show",this.effect.' +
        'call(this,i)}}(t.fn.show),hide:function(t){return function(e){if' +
        '(n(e))return t.apply(this,arguments);var i=s.apply(this,argument' +
        's);return i.mode="hide",this.effect.call(this,i)}}(t.fn.hide),to' +
        'ggle:function(t){return function(e){if(n(e)||"boolean"==typeof e' +
        ')return t.apply(this,arguments);var i=s.apply(this,arguments);re' +
        'turn i.mode="toggle",this.effect.call(this,i)}}(t.fn.toggle),css' +
        'Unit:function(e){var i=this.css(e),s=[];return t.each(["em","px"' +
        ',"%","pt"],function(t,e){i.indexOf(e)>0&&(s=[parseFloat(i),e])})' +
        ',s}})}(),function(){var e={};t.each(["Quad","Cubic","Quart","Qui' +
        'nt","Expo"],function(t,i){e[i]=function(e){return Math.pow(e,t+2' +
        ')}}),t.extend(e,{Sine:function(t){return 1-Math.cos(t*Math.PI/2)' +
        '},Circ:function(t){return 1-Math.sqrt(1-t*t)},Elastic:function(t' +
        '){return 0===t||1===t?t:-Math.pow(2,8*(t-1))*Math.sin((80*(t-1)-' +
        '7.5)*Math.PI/15)},Back:function(t){return t*t*(3*t-2)},Bounce:fu' +
        'nction(t){for(var e,i=4;((e=Math.pow(2,--i))-1)/11>t;);return 1/' +
        'Math.pow(4,3-i)-7.5625*Math.pow((3*e-2)/22-t,2)}}),t.each(e,func' +
        'tion(e,i){t.easing["easeIn"+e]=i,t.easing["easeOut"+e]=function(' +
        't){return 1-i(1-t)},t.easing["easeInOut"+e]=function(t){return.5' +
        '>t?i(2*t)/2:1-i(-2*t+2)/2}})}()})(jQuery);')
    Left = 104
    Top = 272
  end
  object js6: TPageProducer
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
    Left = 56
    Top = 272
  end
  object adhead: TDataSetPageProducer
    HTMLDoc.Strings = (
      '<form method=post action=/adminset style=text-align:center>'
      '    <label><p>'#12497#12473#12527#12540#12489#12398#22793#26356
      
        '      <input type="password" style="HEIGHT: 23px; WIDTH: 85px" n' +
        'ame="pass" value="<#password>">'
      '      </p>'
      '    </label>'
      '    <p>'
      
        '    <input type="checkbox" value="on" name="mente" <#mente>>'#12513#12531#12486#12490 +
        #12531#12473#34920#31034'</p>'
      '    <p><input type="submit" value="'#22793#26356'"></p>'
      '    <p><a href="/logout">'#12525#12464#12450#12454#12488'</a></p>'
      '</form>'
      '<form action=/admindel method=post>')
    DataSet = DataModule1.FDTable3
    OnHTMLTag = adheadHTMLTag
    Left = 176
    Top = 88
  end
  object js7: TPageProducer
    HTMLDoc.Strings = (
      '/*! jQuery UI - v1.12.1 - 2016-12-11'
      '* http://jqueryui.com'
      
        '* Includes: widget.js, position.js, data.js, disable-selection.j' +
        's, focusable.js, form-reset-mixin.js, jquery-1-7.js, keycode.js,' +
        ' labels.js, scroll-parent.js, tabbable.js, unique-id.js, widgets' +
        '/draggable.js, widgets/droppable.js, widgets/resizable.js, widge' +
        'ts/selectable.js, widgets/sortable.js, widgets/accordion.js, wid' +
        'gets/autocomplete.js, widgets/button.js, widgets/checkboxradio.j' +
        's, widgets/controlgroup.js, widgets/datepicker.js, widgets/dialo' +
        'g.js, widgets/menu.js, widgets/mouse.js, widgets/progressbar.js,' +
        ' widgets/selectmenu.js, widgets/slider.js, widgets/spinner.js, w' +
        'idgets/tabs.js, widgets/tooltip.js, effect.js, effects/effect-bl' +
        'ind.js, effects/effect-bounce.js, effects/effect-clip.js, effect' +
        's/effect-drop.js, effects/effect-explode.js, effects/effect-fade' +
        '.js, effects/effect-fold.js, effects/effect-highlight.js, effect' +
        's/effect-puff.js, effects/effect-pulsate.js, effects/effect-scal' +
        'e.js, effects/effect-shake.js, effects/effect-size.js, effects/e' +
        'ffect-slide.js, effects/effect-transfer.js'
      
        '* Copyright jQuery Foundation and other contributors; Licensed M' +
        'IT */'
      ''
      
        '(function(t){"function"==typeof define&&define.amd?define(["jque' +
        'ry"],t):t(jQuery)})(function(t){function e(t){for(var e=t.css("v' +
        'isibility");"inherit"===e;)t=t.parent(),e=t.css("visibility");re' +
        'turn"hidden"!==e}function i(t){for(var e,i;t.length&&t[0]!==docu' +
        'ment;){if(e=t.css("position"),("absolute"===e||"relative"===e||"' +
        'fixed"===e)&&(i=parseInt(t.css("zIndex"),10),!isNaN(i)&&0!==i))r' +
        'eturn i;t=t.parent()}return 0}function s(){this._curInst=null,th' +
        'is._keyEvent=!1,this._disabledInputs=[],this._datepickerShowing=' +
        '!1,this._inDialog=!1,this._mainDivId="ui-datepicker-div",this._i' +
        'nlineClass="ui-datepicker-inline",this._appendClass="ui-datepick' +
        'er-append",this._triggerClass="ui-datepicker-trigger",this._dial' +
        'ogClass="ui-datepicker-dialog",this._disableClass="ui-datepicker' +
        '-disabled",this._unselectableClass="ui-datepicker-unselectable",' +
        'this._currentClass="ui-datepicker-current-day",this._dayOverClas' +
        's="ui-datepicker-days-cell-over",this.regional=[],this.regional[' +
        '""]={closeText:"Done",prevText:"Prev",nextText:"Next",currentTex' +
        't:"Today",monthNames:["January","February","March","April","May"' +
        ',"June","July","August","September","October","November","Decemb' +
        'er"],monthNamesShort:["Jan","Feb","Mar","Apr","May","Jun","Jul",' +
        '"Aug","Sep","Oct","Nov","Dec"],dayNames:["Sunday","Monday","Tues' +
        'day","Wednesday","Thursday","Friday","Saturday"],dayNamesShort:[' +
        '"Sun","Mon","Tue","Wed","Thu","Fri","Sat"],dayNamesMin:["Su","Mo' +
        '","Tu","We","Th","Fr","Sa"],weekHeader:"Wk",dateFormat:"mm/dd/yy' +
        '",firstDay:0,isRTL:!1,showMonthAfterYear:!1,yearSuffix:""},this.' +
        '_defaults={showOn:"focus",showAnim:"fadeIn",showOptions:{},defau' +
        'ltDate:null,appendText:"",buttonText:"...",buttonImage:"",button' +
        'ImageOnly:!1,hideIfNoPrevNext:!1,navigationAsDateFormat:!1,gotoC' +
        'urrent:!1,changeMonth:!1,changeYear:!1,yearRange:"c-10:c+10",sho' +
        'wOtherMonths:!1,selectOtherMonths:!1,showWeek:!1,calculateWeek:t' +
        'his.iso8601Week,shortYearCutoff:"+10",minDate:null,maxDate:null,' +
        'duration:"fast",beforeShowDay:null,beforeShow:null,onSelect:null' +
        ',onChangeMonthYear:null,onClose:null,numberOfMonths:1,showCurren' +
        'tAtPos:0,stepMonths:1,stepBigMonths:12,altField:"",altFormat:"",' +
        'constrainInput:!0,showButtonPanel:!1,autoSize:!1,disabled:!1},t.' +
        'extend(this._defaults,this.regional[""]),this.regional.en=t.exte' +
        'nd(!0,{},this.regional[""]),this.regional["en-US"]=t.extend(!0,{' +
        '},this.regional.en),this.dpDiv=n(t("<div id='#39'"+this._mainDivId+"' +
        #39' class='#39'ui-datepicker ui-widget ui-widget-content ui-helper-cle' +
        'arfix ui-corner-all'#39'></div>"))}function n(e){var i="button, .ui-' +
        'datepicker-prev, .ui-datepicker-next, .ui-datepicker-calendar td' +
        ' a";return e.on("mouseout",i,function(){t(this).removeClass("ui-' +
        'state-hover"),-1!==this.className.indexOf("ui-datepicker-prev")&' +
        '&t(this).removeClass("ui-datepicker-prev-hover"),-1!==this.class' +
        'Name.indexOf("ui-datepicker-next")&&t(this).removeClass("ui-date' +
        'picker-next-hover")}).on("mouseover",i,o)}function o(){t.datepic' +
        'ker._isDisabledDatepicker(p.inline?p.dpDiv.parent()[0]:p.input[0' +
        '])||(t(this).parents(".ui-datepicker-calendar").find("a").remove' +
        'Class("ui-state-hover"),t(this).addClass("ui-state-hover"),-1!==' +
        'this.className.indexOf("ui-datepicker-prev")&&t(this).addClass("' +
        'ui-datepicker-prev-hover"),-1!==this.className.indexOf("ui-datep' +
        'icker-next")&&t(this).addClass("ui-datepicker-next-hover"))}func' +
        'tion a(e,i){t.extend(e,i);for(var s in i)null==i[s]&&(e[s]=i[s])' +
        ';return e}function r(t){return function(){var e=this.element.val' +
        '();t.apply(this,arguments),this._refresh(),e!==this.element.val(' +
        ')&&this._trigger("change")}}t.ui=t.ui||{},t.ui.version="1.12.1";' +
        'var l=0,h=Array.prototype.slice;t.cleanData=function(e){return f' +
        'unction(i){var s,n,o;for(o=0;null!=(n=i[o]);o++)try{s=t._data(n,' +
        '"events"),s&&s.remove&&t(n).triggerHandler("remove")}catch(a){}e' +
        '(i)}}(t.cleanData),t.widget=function(e,i,s){var n,o,a,r={},l=e.s' +
        'plit(".")[0];e=e.split(".")[1];var h=l+"-"+e;return s||'
      
        '(s=i,i=t.Widget),t.isArray(s)&&(s=t.extend.apply(null,[{}].conca' +
        't(s))),t.expr[":"][h.toLowerCase()]=function(e){return!!t.data(e' +
        ',h)},t[l]=t[l]||{},n=t[l][e],o=t[l][e]=function(t,e){return this' +
        '._createWidget?(arguments.length&&this._createWidget(t,e),void 0' +
        '):new o(t,e)},t.extend(o,n,{version:s.version,_proto:t.extend({}' +
        ',s),_childConstructors:[]}),a=new i,a.options=t.widget.extend({}' +
        ',a.options),t.each(s,function(e,s){return t.isFunction(s)?(r[e]=' +
        'function(){function t(){return i.prototype[e].apply(this,argumen' +
        'ts)}function n(t){return i.prototype[e].apply(this,t)}return fun' +
        'ction(){var e,i=this._super,o=this._superApply;return this._supe' +
        'r=t,this._superApply=n,e=s.apply(this,arguments),this._super=i,t' +
        'his._superApply=o,e}}(),void 0):(r[e]=s,void 0)}),o.prototype=t.' +
        'widget.extend(a,{widgetEventPrefix:n?a.widgetEventPrefix||e:e},r' +
        ',{constructor:o,namespace:l,widgetName:e,widgetFullName:h}),n?(t' +
        '.each(n._childConstructors,function(e,i){var s=i.prototype;t.wid' +
        'get(s.namespace+"."+s.widgetName,o,i._proto)}),delete n._childCo' +
        'nstructors):i._childConstructors.push(o),t.widget.bridge(e,o),o}' +
        ',t.widget.extend=function(e){for(var i,s,n=h.call(arguments,1),o' +
        '=0,a=n.length;a>o;o++)for(i in n[o])s=n[o][i],n[o].hasOwnPropert' +
        'y(i)&&void 0!==s&&(e[i]=t.isPlainObject(s)?t.isPlainObject(e[i])' +
        '?t.widget.extend({},e[i],s):t.widget.extend({},s):s);return e},t' +
        '.widget.bridge=function(e,i){var s=i.prototype.widgetFullName||e' +
        ';t.fn[e]=function(n){var o="string"==typeof n,a=h.call(arguments' +
        ',1),r=this;return o?this.length||"instance"!==n?this.each(functi' +
        'on(){var i,o=t.data(this,s);return"instance"===n?(r=o,!1):o?t.is' +
        'Function(o[n])&&"_"!==n.charAt(0)?(i=o[n].apply(o,a),i!==o&&void' +
        ' 0!==i?(r=i&&i.jquery?r.pushStack(i.get()):i,!1):void 0):t.error' +
        '("no such method '#39'"+n+"'#39' for "+e+" widget instance"):t.error("ca' +
        'nnot call methods on "+e+" prior to initialization; "+"attempted' +
        ' to call method '#39'"+n+"'#39'")}):r=void 0:(a.length&&(n=t.widget.exte' +
        'nd.apply(null,[n].concat(a))),this.each(function(){var e=t.data(' +
        'this,s);e?(e.option(n||{}),e._init&&e._init()):t.data(this,s,new' +
        ' i(n,this))})),r}},t.Widget=function(){},t.Widget._childConstruc' +
        'tors=[],t.Widget.prototype={widgetName:"widget",widgetEventPrefi' +
        'x:"",defaultElement:"<div>",options:{classes:{},disabled:!1,crea' +
        'te:null},_createWidget:function(e,i){i=t(i||this.defaultElement|' +
        '|this)[0],this.element=t(i),this.uuid=l++,this.eventNamespace=".' +
        '"+this.widgetName+this.uuid,this.bindings=t(),this.hoverable=t()' +
        ',this.focusable=t(),this.classesElementLookup={},i!==this&&(t.da' +
        'ta(i,this.widgetFullName,this),this._on(!0,this.element,{remove:' +
        'function(t){t.target===i&&this.destroy()}}),this.document=t(i.st' +
        'yle?i.ownerDocument:i.document||i),this.window=t(this.document[0' +
        '].defaultView||this.document[0].parentWindow)),this.options=t.wi' +
        'dget.extend({},this.options,this._getCreateOptions(),e),this._cr' +
        'eate(),this.options.disabled&&this._setOptionDisabled(this.optio' +
        'ns.disabled),this._trigger("create",null,this._getCreateEventDat' +
        'a()),this._init()},_getCreateOptions:function(){return{}},_getCr' +
        'eateEventData:t.noop,_create:t.noop,_init:t.noop,destroy:functio' +
        'n(){var e=this;this._destroy(),t.each(this.classesElementLookup,' +
        'function(t,i){e._removeClass(i,t)}),this.element.off(this.eventN' +
        'amespace).removeData(this.widgetFullName),this.widget().off(this' +
        '.eventNamespace).removeAttr("aria-disabled"),this.bindings.off(t' +
        'his.eventNamespace)},_destroy:t.noop,widget:function(){return th' +
        'is.element},option:function(e,i){var s,n,o,a=e;if(0===arguments.' +
        'length)return t.widget.extend({},this.options);if("string"==type' +
        'of e)if(a={},s=e.split("."),e=s.shift(),s.length){for(n=a[e]=t.w' +
        'idget.extend({},this.options[e]),o=0;s.length-1>o;o++)n[s[o]]=n[' +
        's[o]]||{},n=n[s[o]];if(e=s.pop(),1===arguments.length)return voi' +
        'd 0===n[e]?null:n[e];n[e]=i}else{if(1===arguments.length)return ' +
        'void 0===this.options[e]?null:this.options[e];a[e]=i}return this' +
        '._setOptions(a),this},_setOptions:function(t){var e;for(e in t)t' +
        'his._setOption(e,t[e]);return this},_setOption:function(t,e){ret' +
        'urn"classes"===t&&this._setOptionClasses(e),this.options[t]'
      
        '=e,"disabled"===t&&this._setOptionDisabled(e),this},_setOptionCl' +
        'asses:function(e){var i,s,n;for(i in e)n=this.classesElementLook' +
        'up[i],e[i]!==this.options.classes[i]&&n&&n.length&&(s=t(n.get())' +
        ',this._removeClass(n,i),s.addClass(this._classes({element:s,keys' +
        ':i,classes:e,add:!0})))},_setOptionDisabled:function(t){this._to' +
        'ggleClass(this.widget(),this.widgetFullName+"-disabled",null,!!t' +
        '),t&&(this._removeClass(this.hoverable,null,"ui-state-hover"),th' +
        'is._removeClass(this.focusable,null,"ui-state-focus"))},enable:f' +
        'unction(){return this._setOptions({disabled:!1})},disable:functi' +
        'on(){return this._setOptions({disabled:!0})},_classes:function(e' +
        '){function i(i,o){var a,r;for(r=0;i.length>r;r++)a=n.classesElem' +
        'entLookup[i[r]]||t(),a=e.add?t(t.unique(a.get().concat(e.element' +
        '.get()))):t(a.not(e.element).get()),n.classesElementLookup[i[r]]' +
        '=a,s.push(i[r]),o&&e.classes[i[r]]&&s.push(e.classes[i[r]])}var ' +
        's=[],n=this;return e=t.extend({element:this.element,classes:this' +
        '.options.classes||{}},e),this._on(e.element,{remove:"_untrackCla' +
        'ssesElement"}),e.keys&&i(e.keys.match(/\S+/g)||[],!0),e.extra&&i' +
        '(e.extra.match(/\S+/g)||[]),s.join(" ")},_untrackClassesElement:' +
        'function(e){var i=this;t.each(i.classesElementLookup,function(s,' +
        'n){-1!==t.inArray(e.target,n)&&(i.classesElementLookup[s]=t(n.no' +
        't(e.target).get()))})},_removeClass:function(t,e,i){return this.' +
        '_toggleClass(t,e,i,!1)},_addClass:function(t,e,i){return this._t' +
        'oggleClass(t,e,i,!0)},_toggleClass:function(t,e,i,s){s="boolean"' +
        '==typeof s?s:i;var n="string"==typeof t||null===t,o={extra:n?e:i' +
        ',keys:n?t:e,element:n?this.element:t,add:s};return o.element.tog' +
        'gleClass(this._classes(o),s),this},_on:function(e,i,s){var n,o=t' +
        'his;"boolean"!=typeof e&&(s=i,i=e,e=!1),s?(i=n=t(i),this.binding' +
        's=this.bindings.add(i)):(s=i,i=this.element,n=this.widget()),t.e' +
        'ach(s,function(s,a){function r(){return e||o.options.disabled!==' +
        '!0&&!t(this).hasClass("ui-state-disabled")?("string"==typeof a?o' +
        '[a]:a).apply(o,arguments):void 0}"string"!=typeof a&&(r.guid=a.g' +
        'uid=a.guid||r.guid||t.guid++);var l=s.match(/^([\w:-]*)\s*(.*)$/' +
        '),h=l[1]+o.eventNamespace,u=l[2];u?n.on(h,u,r):i.on(h,r)})},_off' +
        ':function(e,i){i=(i||"").split(" ").join(this.eventNamespace+" "' +
        ')+this.eventNamespace,e.off(i).off(i),this.bindings=t(this.bindi' +
        'ngs.not(e).get()),this.focusable=t(this.focusable.not(e).get()),' +
        'this.hoverable=t(this.hoverable.not(e).get())},_delay:function(t' +
        ',e){function i(){return("string"==typeof t?s[t]:t).apply(s,argum' +
        'ents)}var s=this;return setTimeout(i,e||0)},_hoverable:function(' +
        'e){this.hoverable=this.hoverable.add(e),this._on(e,{mouseenter:f' +
        'unction(e){this._addClass(t(e.currentTarget),null,"ui-state-hove' +
        'r")},mouseleave:function(e){this._removeClass(t(e.currentTarget)' +
        ',null,"ui-state-hover")}})},_focusable:function(e){this.focusabl' +
        'e=this.focusable.add(e),this._on(e,{focusin:function(e){this._ad' +
        'dClass(t(e.currentTarget),null,"ui-state-focus")},focusout:funct' +
        'ion(e){this._removeClass(t(e.currentTarget),null,"ui-state-focus' +
        '")}})},_trigger:function(e,i,s){var n,o,a=this.options[e];if(s=s' +
        '||{},i=t.Event(i),i.type=(e===this.widgetEventPrefix?e:this.widg' +
        'etEventPrefix+e).toLowerCase(),i.target=this.element[0],o=i.orig' +
        'inalEvent)for(n in o)n in i||(i[n]=o[n]);return this.element.tri' +
        'gger(i,s),!(t.isFunction(a)&&a.apply(this.element[0],[i].concat(' +
        's))===!1||i.isDefaultPrevented())}},t.each({show:"fadeIn",hide:"' +
        'fadeOut"},function(e,i){t.Widget.prototype["_"+e]=function(s,n,o' +
        '){"string"==typeof n&&(n={effect:n});var a,r=n?n===!0||"number"=' +
        '=typeof n?i:n.effect||i:e;n=n||{},"number"==typeof n&&(n={durati' +
        'on:n}),a=!t.isEmptyObject(n),n.complete=o,n.delay&&s.delay(n.del' +
        'ay),a&&t.effects&&t.effects.effect[r]?s[e](n):r!==e&&s[r]?s[r](n' +
        '.duration,n.easing,o):s.queue(function(i){t(this)[e](),o&&o.call' +
        '(s[0]),i()})}}),t.widget,function(){function e(t,e,i){return[par' +
        'seFloat(t[0])*(c.test(t[0])?e/100:1),parseFloat(t[1])*(c.test(t[' +
        '1])?i/100:1)]}function i(e,i){return parseInt(t.css(e,i),10)||0}' +
        'function s(e){var i=e[0];return 9===i.nodeType?{width:e.width(),' +
        'height:e.height(),offset:{top:0,left:0}}:t.isWindow(i)?{width:e.' +
        'width'
      
        '(),height:e.height(),offset:{top:e.scrollTop(),left:e.scrollLeft' +
        '()}}:i.preventDefault?{width:0,height:0,offset:{top:i.pageY,left' +
        ':i.pageX}}:{width:e.outerWidth(),height:e.outerHeight(),offset:e' +
        '.offset()}}var n,o=Math.max,a=Math.abs,r=/left|center|right/,l=/' +
        'top|center|bottom/,h=/[\+\-]\d+(\.[\d]+)?%?/,u=/^\w+/,c=/%$/,d=t' +
        '.fn.position;t.position={scrollbarWidth:function(){if(void 0!==n' +
        ')return n;var e,i,s=t("<div style='#39'display:block;position:absolu' +
        'te;width:50px;height:50px;overflow:hidden;'#39'><div style='#39'height:1' +
        '00px;width:auto;'#39'></div></div>"),o=s.children()[0];return t("bod' +
        'y").append(s),e=o.offsetWidth,s.css("overflow","scroll"),i=o.off' +
        'setWidth,e===i&&(i=s[0].clientWidth),s.remove(),n=e-i},getScroll' +
        'Info:function(e){var i=e.isWindow||e.isDocument?"":e.element.css' +
        '("overflow-x"),s=e.isWindow||e.isDocument?"":e.element.css("over' +
        'flow-y"),n="scroll"===i||"auto"===i&&e.width<e.element[0].scroll' +
        'Width,o="scroll"===s||"auto"===s&&e.height<e.element[0].scrollHe' +
        'ight;return{width:o?t.position.scrollbarWidth():0,height:n?t.pos' +
        'ition.scrollbarWidth():0}},getWithinInfo:function(e){var i=t(e||' +
        'window),s=t.isWindow(i[0]),n=!!i[0]&&9===i[0].nodeType,o=!s&&!n;' +
        'return{element:i,isWindow:s,isDocument:n,offset:o?t(e).offset():' +
        '{left:0,top:0},scrollLeft:i.scrollLeft(),scrollTop:i.scrollTop()' +
        ',width:i.outerWidth(),height:i.outerHeight()}}},t.fn.position=fu' +
        'nction(n){if(!n||!n.of)return d.apply(this,arguments);n=t.extend' +
        '({},n);var c,p,f,m,g,_,v=t(n.of),b=t.position.getWithinInfo(n.wi' +
        'thin),y=t.position.getScrollInfo(b),w=(n.collision||"flip").spli' +
        't(" "),x={};return _=s(v),v[0].preventDefault&&(n.at="left top")' +
        ',p=_.width,f=_.height,m=_.offset,g=t.extend({},m),t.each(["my","' +
        'at"],function(){var t,e,i=(n[this]||"").split(" ");1===i.length&' +
        '&(i=r.test(i[0])?i.concat(["center"]):l.test(i[0])?["center"].co' +
        'ncat(i):["center","center"]),i[0]=r.test(i[0])?i[0]:"center",i[1' +
        ']=l.test(i[1])?i[1]:"center",t=h.exec(i[0]),e=h.exec(i[1]),x[thi' +
        's]=[t?t[0]:0,e?e[0]:0],n[this]=[u.exec(i[0])[0],u.exec(i[1])[0]]' +
        '}),1===w.length&&(w[1]=w[0]),"right"===n.at[0]?g.left+=p:"center' +
        '"===n.at[0]&&(g.left+=p/2),"bottom"===n.at[1]?g.top+=f:"center"=' +
        '==n.at[1]&&(g.top+=f/2),c=e(x.at,p,f),g.left+=c[0],g.top+=c[1],t' +
        'his.each(function(){var s,r,l=t(this),h=l.outerWidth(),u=l.outer' +
        'Height(),d=i(this,"marginLeft"),_=i(this,"marginTop"),k=h+d+i(th' +
        'is,"marginRight")+y.width,C=u+_+i(this,"marginBottom")+y.height,' +
        'D=t.extend({},g),I=e(x.my,l.outerWidth(),l.outerHeight());"right' +
        '"===n.my[0]?D.left-=h:"center"===n.my[0]&&(D.left-=h/2),"bottom"' +
        '===n.my[1]?D.top-=u:"center"===n.my[1]&&(D.top-=u/2),D.left+=I[0' +
        '],D.top+=I[1],s={marginLeft:d,marginTop:_},t.each(["left","top"]' +
        ',function(e,i){t.ui.position[w[e]]&&t.ui.position[w[e]][i](D,{ta' +
        'rgetWidth:p,targetHeight:f,elemWidth:h,elemHeight:u,collisionPos' +
        'ition:s,collisionWidth:k,collisionHeight:C,offset:[c[0]+I[0],c[1' +
        ']+I[1]],my:n.my,at:n.at,within:b,elem:l})}),n.using&&(r=function' +
        '(t){var e=m.left-D.left,i=e+p-h,s=m.top-D.top,r=s+f-u,c={target:' +
        '{element:v,left:m.left,top:m.top,width:p,height:f},element:{elem' +
        'ent:l,left:D.left,top:D.top,width:h,height:u},horizontal:0>i?"le' +
        'ft":e>0?"right":"center",vertical:0>r?"top":s>0?"bottom":"middle' +
        '"};h>p&&p>a(e+i)&&(c.horizontal="center"),u>f&&f>a(s+r)&&(c.vert' +
        'ical="middle"),c.important=o(a(e),a(i))>o(a(s),a(r))?"horizontal' +
        '":"vertical",n.using.call(this,t,c)}),l.offset(t.extend(D,{using' +
        ':r}))})},t.ui.position={fit:{left:function(t,e){var i,s=e.within' +
        ',n=s.isWindow?s.scrollLeft:s.offset.left,a=s.width,r=t.left-e.co' +
        'llisionPosition.marginLeft,l=n-r,h=r+e.collisionWidth-a-n;e.coll' +
        'isionWidth>a?l>0&&0>=h?(i=t.left+l+e.collisionWidth-a-n,t.left+=' +
        'l-i):t.left=h>0&&0>=l?n:l>h?n+a-e.collisionWidth:n:l>0?t.left+=l' +
        ':h>0?t.left-=h:t.left=o(t.left-r,t.left)},top:function(t,e){var ' +
        'i,s=e.within,n=s.isWindow?s.scrollTop:s.offset.top,a=e.within.he' +
        'ight,r=t.top-e.collisionPosition.marginTop,l=n-r,h=r+e.collision' +
        'Height-a-n;e.collisionHeight>a?l>0&&0>=h?(i=t.top+l+e.collisionH' +
        'eight-a-n,t.top+=l-i):t.top=h>0&&0>=l?n:l>h?n+a-e.collisionHeigh' +
        't:n:l>0?t.top+=l:h>0?t.top-=h:t.top=o(t.top-r,t.top)}},flip:'
      
        '{left:function(t,e){var i,s,n=e.within,o=n.offset.left+n.scrollL' +
        'eft,r=n.width,l=n.isWindow?n.scrollLeft:n.offset.left,h=t.left-e' +
        '.collisionPosition.marginLeft,u=h-l,c=h+e.collisionWidth-r-l,d="' +
        'left"===e.my[0]?-e.elemWidth:"right"===e.my[0]?e.elemWidth:0,p="' +
        'left"===e.at[0]?e.targetWidth:"right"===e.at[0]?-e.targetWidth:0' +
        ',f=-2*e.offset[0];0>u?(i=t.left+d+p+f+e.collisionWidth-r-o,(0>i|' +
        '|a(u)>i)&&(t.left+=d+p+f)):c>0&&(s=t.left-e.collisionPosition.ma' +
        'rginLeft+d+p+f-l,(s>0||c>a(s))&&(t.left+=d+p+f))},top:function(t' +
        ',e){var i,s,n=e.within,o=n.offset.top+n.scrollTop,r=n.height,l=n' +
        '.isWindow?n.scrollTop:n.offset.top,h=t.top-e.collisionPosition.m' +
        'arginTop,u=h-l,c=h+e.collisionHeight-r-l,d="top"===e.my[1],p=d?-' +
        'e.elemHeight:"bottom"===e.my[1]?e.elemHeight:0,f="top"===e.at[1]' +
        '?e.targetHeight:"bottom"===e.at[1]?-e.targetHeight:0,m=-2*e.offs' +
        'et[1];0>u?(s=t.top+p+f+m+e.collisionHeight-r-o,(0>s||a(u)>s)&&(t' +
        '.top+=p+f+m)):c>0&&(i=t.top-e.collisionPosition.marginTop+p+f+m-' +
        'l,(i>0||c>a(i))&&(t.top+=p+f+m))}},flipfit:{left:function(){t.ui' +
        '.position.flip.left.apply(this,arguments),t.ui.position.fit.left' +
        '.apply(this,arguments)},top:function(){t.ui.position.flip.top.ap' +
        'ply(this,arguments),t.ui.position.fit.top.apply(this,arguments)}' +
        '}}}(),t.ui.position,t.extend(t.expr[":"],{data:t.expr.createPseu' +
        'do?t.expr.createPseudo(function(e){return function(i){return!!t.' +
        'data(i,e)}}):function(e,i,s){return!!t.data(e,s[3])}}),t.fn.exte' +
        'nd({disableSelection:function(){var t="onselectstart"in document' +
        '.createElement("div")?"selectstart":"mousedown";return function(' +
        '){return this.on(t+".ui-disableSelection",function(t){t.preventD' +
        'efault()})}}(),enableSelection:function(){return this.off(".ui-d' +
        'isableSelection")}}),t.ui.focusable=function(i,s){var n,o,a,r,l,' +
        'h=i.nodeName.toLowerCase();return"area"===h?(n=i.parentNode,o=n.' +
        'name,i.href&&o&&"map"===n.nodeName.toLowerCase()?(a=t("img[usema' +
        'p='#39'#"+o+"'#39']"),a.length>0&&a.is(":visible")):!1):(/^(input|select' +
        '|textarea|button|object)$/.test(h)?(r=!i.disabled,r&&(l=t(i).clo' +
        'sest("fieldset")[0],l&&(r=!l.disabled))):r="a"===h?i.href||s:s,r' +
        '&&t(i).is(":visible")&&e(t(i)))},t.extend(t.expr[":"],{focusable' +
        ':function(e){return t.ui.focusable(e,null!=t.attr(e,"tabindex"))' +
        '}}),t.ui.focusable,t.fn.form=function(){return"string"==typeof t' +
        'his[0].form?this.closest("form"):t(this[0].form)},t.ui.formReset' +
        'Mixin={_formResetHandler:function(){var e=t(this);setTimeout(fun' +
        'ction(){var i=e.data("ui-form-reset-instances");t.each(i,functio' +
        'n(){this.refresh()})})},_bindFormResetHandler:function(){if(this' +
        '.form=this.element.form(),this.form.length){var t=this.form.data' +
        '("ui-form-reset-instances")||[];t.length||this.form.on("reset.ui' +
        '-form-reset",this._formResetHandler),t.push(this),this.form.data' +
        '("ui-form-reset-instances",t)}},_unbindFormResetHandler:function' +
        '(){if(this.form.length){var e=this.form.data("ui-form-reset-inst' +
        'ances");e.splice(t.inArray(this,e),1),e.length?this.form.data("u' +
        'i-form-reset-instances",e):this.form.removeData("ui-form-reset-i' +
        'nstances").off("reset.ui-form-reset")}}},"1.7"===t.fn.jquery.sub' +
        'string(0,3)&&(t.each(["Width","Height"],function(e,i){function s' +
        '(e,i,s,o){return t.each(n,function(){i-=parseFloat(t.css(e,"padd' +
        'ing"+this))||0,s&&(i-=parseFloat(t.css(e,"border"+this+"Width"))' +
        '||0),o&&(i-=parseFloat(t.css(e,"margin"+this))||0)}),i}var n="Wi' +
        'dth"===i?["Left","Right"]:["Top","Bottom"],o=i.toLowerCase(),a={' +
        'innerWidth:t.fn.innerWidth,innerHeight:t.fn.innerHeight,outerWid' +
        'th:t.fn.outerWidth,outerHeight:t.fn.outerHeight};t.fn["inner"+i]' +
        '=function(e){return void 0===e?a["inner"+i].call(this):this.each' +
        '(function(){t(this).css(o,s(this,e)+"px")})},t.fn["outer"+i]=fun' +
        'ction(e,n){return"number"!=typeof e?a["outer"+i].call(this,e):th' +
        'is.each(function(){t(this).css(o,s(this,e,!0,n)+"px")})}}),t.fn.' +
        'addBack=function(t){return this.add(null==t?this.prevObject:this' +
        '.prevObject.filter(t))}),t.ui.keyCode='
      
        '{BACKSPACE:8,COMMA:188,DELETE:46,DOWN:40,END:35,ENTER:13,ESCAPE:' +
        '27,HOME:36,LEFT:37,PAGE_DOWN:34,PAGE_UP:33,PERIOD:190,RIGHT:39,S' +
        'PACE:32,TAB:9,UP:38},t.ui.escapeSelector=function(){var t=/([!"#' +
        '$%&'#39'()*+,./:;<=>?@[\]^`{|}~])/g;return function(e){return e.repl' +
        'ace(t,"\\$1")}}(),t.fn.labels=function(){var e,i,s,n,o;return th' +
        'is[0].labels&&this[0].labels.length?this.pushStack(this[0].label' +
        's):(n=this.eq(0).parents("label"),s=this.attr("id"),s&&(e=this.e' +
        'q(0).parents().last(),o=e.add(e.length?e.siblings():this.sibling' +
        's()),i="label[for='#39'"+t.ui.escapeSelector(s)+"'#39']",n=n.add(o.find(' +
        'i).addBack(i))),this.pushStack(n))},t.fn.scrollParent=function(e' +
        '){var i=this.css("position"),s="absolute"===i,n=e?/(auto|scroll|' +
        'hidden)/:/(auto|scroll)/,o=this.parents().filter(function(){var ' +
        'e=t(this);return s&&"static"===e.css("position")?!1:n.test(e.css' +
        '("overflow")+e.css("overflow-y")+e.css("overflow-x"))}).eq(0);re' +
        'turn"fixed"!==i&&o.length?o:t(this[0].ownerDocument||document)},' +
        't.extend(t.expr[":"],{tabbable:function(e){var i=t.attr(e,"tabin' +
        'dex"),s=null!=i;return(!s||i>=0)&&t.ui.focusable(e,s)}}),t.fn.ex' +
        'tend({uniqueId:function(){var t=0;return function(){return this.' +
        'each(function(){this.id||(this.id="ui-id-"+ ++t)})}}(),removeUni' +
        'queId:function(){return this.each(function(){/^ui-id-\d+$/.test(' +
        'this.id)&&t(this).removeAttr("id")})}}),t.ui.ie=!!/msie [\w.]+/.' +
        'exec(navigator.userAgent.toLowerCase());var u=!1;t(document).on(' +
        '"mouseup",function(){u=!1}),t.widget("ui.mouse",{version:"1.12.1' +
        '",options:{cancel:"input, textarea, button, select, option",dist' +
        'ance:1,delay:0},_mouseInit:function(){var e=this;this.element.on' +
        '("mousedown."+this.widgetName,function(t){return e._mouseDown(t)' +
        '}).on("click."+this.widgetName,function(i){return!0===t.data(i.t' +
        'arget,e.widgetName+".preventClickEvent")?(t.removeData(i.target,' +
        'e.widgetName+".preventClickEvent"),i.stopImmediatePropagation(),' +
        '!1):void 0}),this.started=!1},_mouseDestroy:function(){this.elem' +
        'ent.off("."+this.widgetName),this._mouseMoveDelegate&&this.docum' +
        'ent.off("mousemove."+this.widgetName,this._mouseMoveDelegate).of' +
        'f("mouseup."+this.widgetName,this._mouseUpDelegate)},_mouseDown:' +
        'function(e){if(!u){this._mouseMoved=!1,this._mouseStarted&&this.' +
        '_mouseUp(e),this._mouseDownEvent=e;var i=this,s=1===e.which,n="s' +
        'tring"==typeof this.options.cancel&&e.target.nodeName?t(e.target' +
        ').closest(this.options.cancel).length:!1;return s&&!n&&this._mou' +
        'seCapture(e)?(this.mouseDelayMet=!this.options.delay,this.mouseD' +
        'elayMet||(this._mouseDelayTimer=setTimeout(function(){i.mouseDel' +
        'ayMet=!0},this.options.delay)),this._mouseDistanceMet(e)&&this._' +
        'mouseDelayMet(e)&&(this._mouseStarted=this._mouseStart(e)!==!1,!' +
        'this._mouseStarted)?(e.preventDefault(),!0):(!0===t.data(e.targe' +
        't,this.widgetName+".preventClickEvent")&&t.removeData(e.target,t' +
        'his.widgetName+".preventClickEvent"),this._mouseMoveDelegate=fun' +
        'ction(t){return i._mouseMove(t)},this._mouseUpDelegate=function(' +
        't){return i._mouseUp(t)},this.document.on("mousemove."+this.widg' +
        'etName,this._mouseMoveDelegate).on("mouseup."+this.widgetName,th' +
        'is._mouseUpDelegate),e.preventDefault(),u=!0,!0)):!0}},_mouseMov' +
        'e:function(e){if(this._mouseMoved){if(t.ui.ie&&(!document.docume' +
        'ntMode||9>document.documentMode)&&!e.button)return this._mouseUp' +
        '(e);if(!e.which)if(e.originalEvent.altKey||e.originalEvent.ctrlK' +
        'ey||e.originalEvent.metaKey||e.originalEvent.shiftKey)this.ignor' +
        'eMissingWhich=!0;else if(!this.ignoreMissingWhich)return this._m' +
        'ouseUp(e)}return(e.which||e.button)&&(this._mouseMoved=!0),this.' +
        '_mouseStarted?(this._mouseDrag(e),e.preventDefault()):(this._mou' +
        'seDistanceMet(e)&&this._mouseDelayMet(e)&&(this._mouseStarted=th' +
        'is._mouseStart(this._mouseDownEvent,e)!==!1,this._mouseStarted?t' +
        'his._mouseDrag(e):this._mouseUp(e)),!this._mouseStarted)},_mouse' +
        'Up:function(e){this.document.off("mousemove."+this.widgetName,th' +
        'is._mouseMoveDelegate).off("mouseup."+this.widgetName,this.'
      
        '_mouseUpDelegate),this._mouseStarted&&(this._mouseStarted=!1,e.t' +
        'arget===this._mouseDownEvent.target&&t.data(e.target,this.widget' +
        'Name+".preventClickEvent",!0),this._mouseStop(e)),this._mouseDel' +
        'ayTimer&&(clearTimeout(this._mouseDelayTimer),delete this._mouse' +
        'DelayTimer),this.ignoreMissingWhich=!1,u=!1,e.preventDefault()},' +
        '_mouseDistanceMet:function(t){return Math.max(Math.abs(this._mou' +
        'seDownEvent.pageX-t.pageX),Math.abs(this._mouseDownEvent.pageY-t' +
        '.pageY))>=this.options.distance},_mouseDelayMet:function(){retur' +
        'n this.mouseDelayMet},_mouseStart:function(){},_mouseDrag:functi' +
        'on(){},_mouseStop:function(){},_mouseCapture:function(){return!0' +
        '}}),t.ui.plugin={add:function(e,i,s){var n,o=t.ui[e].prototype;f' +
        'or(n in s)o.plugins[n]=o.plugins[n]||[],o.plugins[n].push([i,s[n' +
        ']])},call:function(t,e,i,s){var n,o=t.plugins[e];if(o&&(s||t.ele' +
        'ment[0].parentNode&&11!==t.element[0].parentNode.nodeType))for(n' +
        '=0;o.length>n;n++)t.options[o[n][0]]&&o[n][1].apply(t.element,i)' +
        '}},t.ui.safeActiveElement=function(t){var e;try{e=t.activeElemen' +
        't}catch(i){e=t.body}return e||(e=t.body),e.nodeName||(e=t.body),' +
        'e},t.ui.safeBlur=function(e){e&&"body"!==e.nodeName.toLowerCase(' +
        ')&&t(e).trigger("blur")},t.widget("ui.draggable",t.ui.mouse,{ver' +
        'sion:"1.12.1",widgetEventPrefix:"drag",options:{addClasses:!0,ap' +
        'pendTo:"parent",axis:!1,connectToSortable:!1,containment:!1,curs' +
        'or:"auto",cursorAt:!1,grid:!1,handle:!1,helper:"original",iframe' +
        'Fix:!1,opacity:!1,refreshPositions:!1,revert:!1,revertDuration:5' +
        '00,scope:"default",scroll:!0,scrollSensitivity:20,scrollSpeed:20' +
        ',snap:!1,snapMode:"both",snapTolerance:20,stack:!1,zIndex:!1,dra' +
        'g:null,start:null,stop:null},_create:function(){"original"===thi' +
        's.options.helper&&this._setPositionRelative(),this.options.addCl' +
        'asses&&this._addClass("ui-draggable"),this._setHandleClassName()' +
        ',this._mouseInit()},_setOption:function(t,e){this._super(t,e),"h' +
        'andle"===t&&(this._removeHandleClassName(),this._setHandleClassN' +
        'ame())},_destroy:function(){return(this.helper||this.element).is' +
        '(".ui-draggable-dragging")?(this.destroyOnClear=!0,void 0):(this' +
        '._removeHandleClassName(),this._mouseDestroy(),void 0)},_mouseCa' +
        'pture:function(e){var i=this.options;return this.helper||i.disab' +
        'led||t(e.target).closest(".ui-resizable-handle").length>0?!1:(th' +
        'is.handle=this._getHandle(e),this.handle?(this._blurActiveElemen' +
        't(e),this._blockFrames(i.iframeFix===!0?"iframe":i.iframeFix),!0' +
        '):!1)},_blockFrames:function(e){this.iframeBlocks=this.document.' +
        'find(e).map(function(){var e=t(this);return t("<div>").css("posi' +
        'tion","absolute").appendTo(e.parent()).outerWidth(e.outerWidth()' +
        ').outerHeight(e.outerHeight()).offset(e.offset())[0]})},_unblock' +
        'Frames:function(){this.iframeBlocks&&(this.iframeBlocks.remove()' +
        ',delete this.iframeBlocks)},_blurActiveElement:function(e){var i' +
        '=t.ui.safeActiveElement(this.document[0]),s=t(e.target);s.closes' +
        't(i).length||t.ui.safeBlur(i)},_mouseStart:function(e){var i=thi' +
        's.options;return this.helper=this._createHelper(e),this._addClas' +
        's(this.helper,"ui-draggable-dragging"),this._cacheHelperProporti' +
        'ons(),t.ui.ddmanager&&(t.ui.ddmanager.current=this),this._cacheM' +
        'argins(),this.cssPosition=this.helper.css("position"),this.scrol' +
        'lParent=this.helper.scrollParent(!0),this.offsetParent=this.help' +
        'er.offsetParent(),this.hasFixedAncestor=this.helper.parents().fi' +
        'lter(function(){return"fixed"===t(this).css("position")}).length' +
        '>0,this.positionAbs=this.element.offset(),this._refreshOffsets(e' +
        '),this.originalPosition=this.position=this._generatePosition(e,!' +
        '1),this.originalPageX=e.pageX,this.originalPageY=e.pageY,i.curso' +
        'rAt&&this._adjustOffsetFromHelper(i.cursorAt),this._setContainme' +
        'nt(),this._trigger("start",e)===!1?(this._clear(),!1):(this._cac' +
        'heHelperProportions(),t.ui.ddmanager&&!i.dropBehaviour&&t.ui.ddm' +
        'anager.prepareOffsets(this,e),this._mouseDrag(e,!0),t.ui.ddmanag' +
        'er&&t.ui.ddmanager.dragStart(this,e),!0)},_refreshOffsets:functi' +
        'on(t){this.offset={top:this.positionAbs.top-this.margins.top,lef' +
        't:this.positionAbs.left-this.margins.left,scroll:!'
      
        '1,parent:this._getParentOffset(),relative:this._getRelativeOffse' +
        't()},this.offset.click={left:t.pageX-this.offset.left,top:t.page' +
        'Y-this.offset.top}},_mouseDrag:function(e,i){if(this.hasFixedAnc' +
        'estor&&(this.offset.parent=this._getParentOffset()),this.positio' +
        'n=this._generatePosition(e,!0),this.positionAbs=this._convertPos' +
        'itionTo("absolute"),!i){var s=this._uiHash();if(this._trigger("d' +
        'rag",e,s)===!1)return this._mouseUp(new t.Event("mouseup",e)),!1' +
        ';this.position=s.position}return this.helper[0].style.left=this.' +
        'position.left+"px",this.helper[0].style.top=this.position.top+"p' +
        'x",t.ui.ddmanager&&t.ui.ddmanager.drag(this,e),!1},_mouseStop:fu' +
        'nction(e){var i=this,s=!1;return t.ui.ddmanager&&!this.options.d' +
        'ropBehaviour&&(s=t.ui.ddmanager.drop(this,e)),this.dropped&&(s=t' +
        'his.dropped,this.dropped=!1),"invalid"===this.options.revert&&!s' +
        '||"valid"===this.options.revert&&s||this.options.revert===!0||t.' +
        'isFunction(this.options.revert)&&this.options.revert.call(this.e' +
        'lement,s)?t(this.helper).animate(this.originalPosition,parseInt(' +
        'this.options.revertDuration,10),function(){i._trigger("stop",e)!' +
        '==!1&&i._clear()}):this._trigger("stop",e)!==!1&&this._clear(),!' +
        '1},_mouseUp:function(e){return this._unblockFrames(),t.ui.ddmana' +
        'ger&&t.ui.ddmanager.dragStop(this,e),this.handleElement.is(e.tar' +
        'get)&&this.element.trigger("focus"),t.ui.mouse.prototype._mouseU' +
        'p.call(this,e)},cancel:function(){return this.helper.is(".ui-dra' +
        'ggable-dragging")?this._mouseUp(new t.Event("mouseup",{target:th' +
        'is.element[0]})):this._clear(),this},_getHandle:function(e){retu' +
        'rn this.options.handle?!!t(e.target).closest(this.element.find(t' +
        'his.options.handle)).length:!0},_setHandleClassName:function(){t' +
        'his.handleElement=this.options.handle?this.element.find(this.opt' +
        'ions.handle):this.element,this._addClass(this.handleElement,"ui-' +
        'draggable-handle")},_removeHandleClassName:function(){this._remo' +
        'veClass(this.handleElement,"ui-draggable-handle")},_createHelper' +
        ':function(e){var i=this.options,s=t.isFunction(i.helper),n=s?t(i' +
        '.helper.apply(this.element[0],[e])):"clone"===i.helper?this.elem' +
        'ent.clone().removeAttr("id"):this.element;return n.parents("body' +
        '").length||n.appendTo("parent"===i.appendTo?this.element[0].pare' +
        'ntNode:i.appendTo),s&&n[0]===this.element[0]&&this._setPositionR' +
        'elative(),n[0]===this.element[0]||/(fixed|absolute)/.test(n.css(' +
        '"position"))||n.css("position","absolute"),n},_setPositionRelati' +
        've:function(){/^(?:r|a|f)/.test(this.element.css("position"))||(' +
        'this.element[0].style.position="relative")},_adjustOffsetFromHel' +
        'per:function(e){"string"==typeof e&&(e=e.split(" ")),t.isArray(e' +
        ')&&(e={left:+e[0],top:+e[1]||0}),"left"in e&&(this.offset.click.' +
        'left=e.left+this.margins.left),"right"in e&&(this.offset.click.l' +
        'eft=this.helperProportions.width-e.right+this.margins.left),"top' +
        '"in e&&(this.offset.click.top=e.top+this.margins.top),"bottom"in' +
        ' e&&(this.offset.click.top=this.helperProportions.height-e.botto' +
        'm+this.margins.top)},_isRootNode:function(t){return/(html|body)/' +
        'i.test(t.tagName)||t===this.document[0]},_getParentOffset:functi' +
        'on(){var e=this.offsetParent.offset(),i=this.document[0];return"' +
        'absolute"===this.cssPosition&&this.scrollParent[0]!==i&&t.contai' +
        'ns(this.scrollParent[0],this.offsetParent[0])&&(e.left+=this.scr' +
        'ollParent.scrollLeft(),e.top+=this.scrollParent.scrollTop()),thi' +
        's._isRootNode(this.offsetParent[0])&&(e={top:0,left:0}),{top:e.t' +
        'op+(parseInt(this.offsetParent.css("borderTopWidth"),10)||0),lef' +
        't:e.left+(parseInt(this.offsetParent.css("borderLeftWidth"),10)|' +
        '|0)}},_getRelativeOffset:function(){if("relative"!==this.cssPosi' +
        'tion)return{top:0,left:0};var t=this.element.position(),e=this._' +
        'isRootNode(this.scrollParent[0]);return{top:t.top-(parseInt(this' +
        '.helper.css("top"),10)||0)+(e?0:this.scrollParent.scrollTop()),l' +
        'eft:t.left-(parseInt(this.helper.css("left"),10)||0)+(e?0:this.s' +
        'crollParent.scrollLeft())}},_cacheMargins:function(){this.margin' +
        's={left:parseInt(this.element.css("marginLeft"),10)||0,top:parse' +
        'Int(this.element.css("marginTop"),10)||0,right:parseInt(this.ele' +
        'ment.css("marginRight"),10)||'
      
        '0,bottom:parseInt(this.element.css("marginBottom"),10)||0}},_cac' +
        'heHelperProportions:function(){this.helperProportions={width:thi' +
        's.helper.outerWidth(),height:this.helper.outerHeight()}},_setCon' +
        'tainment:function(){var e,i,s,n=this.options,o=this.document[0];' +
        'return this.relativeContainer=null,n.containment?"window"===n.co' +
        'ntainment?(this.containment=[t(window).scrollLeft()-this.offset.' +
        'relative.left-this.offset.parent.left,t(window).scrollTop()-this' +
        '.offset.relative.top-this.offset.parent.top,t(window).scrollLeft' +
        '()+t(window).width()-this.helperProportions.width-this.margins.l' +
        'eft,t(window).scrollTop()+(t(window).height()||o.body.parentNode' +
        '.scrollHeight)-this.helperProportions.height-this.margins.top],v' +
        'oid 0):"document"===n.containment?(this.containment=[0,0,t(o).wi' +
        'dth()-this.helperProportions.width-this.margins.left,(t(o).heigh' +
        't()||o.body.parentNode.scrollHeight)-this.helperProportions.heig' +
        'ht-this.margins.top],void 0):n.containment.constructor===Array?(' +
        'this.containment=n.containment,void 0):("parent"===n.containment' +
        '&&(n.containment=this.helper[0].parentNode),i=t(n.containment),s' +
        '=i[0],s&&(e=/(scroll|auto)/.test(i.css("overflow")),this.contain' +
        'ment=[(parseInt(i.css("borderLeftWidth"),10)||0)+(parseInt(i.css' +
        '("paddingLeft"),10)||0),(parseInt(i.css("borderTopWidth"),10)||0' +
        ')+(parseInt(i.css("paddingTop"),10)||0),(e?Math.max(s.scrollWidt' +
        'h,s.offsetWidth):s.offsetWidth)-(parseInt(i.css("borderRightWidt' +
        'h"),10)||0)-(parseInt(i.css("paddingRight"),10)||0)-this.helperP' +
        'roportions.width-this.margins.left-this.margins.right,(e?Math.ma' +
        'x(s.scrollHeight,s.offsetHeight):s.offsetHeight)-(parseInt(i.css' +
        '("borderBottomWidth"),10)||0)-(parseInt(i.css("paddingBottom"),1' +
        '0)||0)-this.helperProportions.height-this.margins.top-this.margi' +
        'ns.bottom],this.relativeContainer=i),void 0):(this.containment=n' +
        'ull,void 0)'
      
        '},_convertPositionTo:function(t,e){e||(e=this.position);var i="a' +
        'bsolute"===t?1:-1,s=this._isRootNode(this.scrollParent[0]);retur' +
        'n{top:e.top+this.offset.relative.top*i+this.offset.parent.top*i-' +
        '("fixed"===this.cssPosition?-this.offset.scroll.top:s?0:this.off' +
        'set.scroll.top)*i,left:e.left+this.offset.relative.left*i+this.o' +
        'ffset.parent.left*i-("fixed"===this.cssPosition?-this.offset.scr' +
        'oll.left:s?0:this.offset.scroll.left)*i}},_generatePosition:func' +
        'tion(t,e){var i,s,n,o,a=this.options,r=this._isRootNode(this.scr' +
        'ollParent[0]),l=t.pageX,h=t.pageY;return r&&this.offset.scroll||' +
        '(this.offset.scroll={top:this.scrollParent.scrollTop(),left:this' +
        '.scrollParent.scrollLeft()}),e&&(this.containment&&(this.relativ' +
        'eContainer?(s=this.relativeContainer.offset(),i=[this.containmen' +
        't[0]+s.left,this.containment[1]+s.top,this.containment[2]+s.left' +
        ',this.containment[3]+s.top]):i=this.containment,t.pageX-this.off' +
        'set.click.left<i[0]&&(l=i[0]+this.offset.click.left),t.pageY-thi' +
        's.offset.click.top<i[1]&&(h=i[1]+this.offset.click.top),t.pageX-' +
        'this.offset.click.left>i[2]&&(l=i[2]+this.offset.click.left),t.p' +
        'ageY-this.offset.click.top>i[3]&&(h=i[3]+this.offset.click.top))' +
        ',a.grid&&(n=a.grid[1]?this.originalPageY+Math.round((h-this.orig' +
        'inalPageY)/a.grid[1])*a.grid[1]:this.originalPageY,h=i?n-this.of' +
        'fset.click.top>=i[1]||n-this.offset.click.top>i[3]?n:n-this.offs' +
        'et.click.top>=i[1]?n-a.grid[1]:n+a.grid[1]:n,o=a.grid[0]?this.or' +
        'iginalPageX+Math.round((l-this.originalPageX)/a.grid[0])*a.grid[' +
        '0]:this.originalPageX,l=i?o-this.offset.click.left>=i[0]||o-this' +
        '.offset.click.left>i[2]?o:o-this.offset.click.left>=i[0]?o-a.gri' +
        'd[0]:o+a.grid[0]:o),"y"===a.axis&&(l=this.originalPageX),"x"===a' +
        '.axis&&(h=this.originalPageY)),{top:h-this.offset.click.top-this' +
        '.offset.relative.top-this.offset.parent.top+("fixed"===this.cssP' +
        'osition?-this.offset.scroll.top:r?0:this.offset.scroll.top),left' +
        ':l-this.offset.click.left-this.offset.relative.left-this.offset.' +
        'parent.left+("fixed"===this.cssPosition?-this.offset.scroll.left' +
        ':r?0:this.offset.scroll.left)}},_clear:function(){this._removeCl' +
        'ass(this.helper,"ui-draggable-dragging"),this.helper[0]===this.e' +
        'lement[0]||this.cancelHelperRemoval||this.helper.remove(),this.h' +
        'elper=null,this.cancelHelperRemoval=!1,this.destroyOnClear&&this' +
        '.destroy()},_trigger:function(e,i,s){return s=s||this._uiHash(),' +
        't.ui.plugin.call(this,e,[i,s,this],!0),/^(drag|start|stop)/.test' +
        '(e)&&(this.positionAbs=this._convertPositionTo("absolute"),s.off' +
        'set=this.positionAbs),t.Widget.prototype._trigger.call(this,e,i,' +
        's)},plugins:{},_uiHash:function(){return{helper:this.helper,posi' +
        'tion:this.position,originalPosition:this.originalPosition,offset' +
        ':this.positionAbs}}}),t.ui.plugin.add("draggable","connectToSort' +
        'able",{start:function(e,i,s){var n=t.extend({},i,{item:s.element' +
        '});s.sortables=[],t(s.options.connectToSortable).each(function()' +
        '{var i=t(this).sortable("instance");i&&!i.options.disabled&&(s.s' +
        'ortables.push(i),i.refreshPositions(),i._trigger("activate",e,n)' +
        ')})},stop:function(e,i,s){var n=t.extend({},i,{item:s.element});' +
        's.cancelHelperRemoval=!1,t.each(s.sortables,function(){var t=thi' +
        's;t.isOver?(t.isOver=0,s.cancelHelperRemoval=!0,t.cancelHelperRe' +
        'moval=!1,t._storedCSS={position:t.placeholder.css("position"),to' +
        'p:t.placeholder.css("top"),left:t.placeholder.css("left")},t._mo' +
        'useStop(e),t.options.helper=t.options._helper):(t.cancelHelperRe' +
        'moval=!0,t._trigger("deactivate",e,n))})},drag:function(e,i,s){t' +
        '.each(s.sortables,function(){var n=!1,o=this;o.positionAbs=s.pos' +
        'itionAbs,o.helperProportions=s.helperProportions,o.offset.click=' +
        's.offset.click,o._intersectsWith(o.containerCache)&&(n=!0,t.each' +
        '(s.sortables,function(){return this.positionAbs=s.positionAbs,th' +
        'is.helperProportions=s.helperProportions,this.offset.click=s.off' +
        'set.click,this!==o&&this._intersectsWith(this.containerCache)&&t' +
        '.contains(o.element[0],this.element[0])&&(n=!1),n})),n?(o.isOver' +
        '||(o.isOver=1,s._parent=i.helper.parent(),o.currentItem=i.helper' +
        '.appendTo(o.element).data("ui-sortable-item",!0),o.options._help' +
        'er=o.options.helper,o.options.helper=function(){return i.helper[' +
        '0]},e.target=o.currentItem[0],o._mouseCapture(e,!0),o._mouseStar'
      
        '(e,!0,!0),o.offset.click.top=s.offset.click.top,o.offset.click.l' +
        'eft=s.offset.click.left,o.offset.parent.left-=s.offset.parent.le' +
        'ft-o.offset.parent.left,o.offset.parent.top-=s.offset.parent.top' +
        '-o.offset.parent.top,s._trigger("toSortable",e),s.dropped=o.elem' +
        'ent,t.each(s.sortables,function(){this.refreshPositions()}),s.cu' +
        'rrentItem=s.element,o.fromOutside=s),o.currentItem&&(o._mouseDra' +
        'g(e),i.position=o.position)):o.isOver&&(o.isOver=0,o.cancelHelpe' +
        'rRemoval=!0,o.options._revert=o.options.revert,o.options.revert=' +
        '!1,o._trigger("out",e,o._uiHash(o)),o._mouseStop(e,!0),o.options' +
        '.revert=o.options._revert,o.options.helper=o.options._helper,o.p' +
        'laceholder&&o.placeholder.remove(),i.helper.appendTo(s._parent),' +
        's._refreshOffsets(e),i.position=s._generatePosition(e,!0),s._tri' +
        'gger("fromSortable",e),s.dropped=!1,t.each(s.sortables,function(' +
        '){this.refreshPositions()}))})}}),t.ui.plugin.add("draggable","c' +
        'ursor",{start:function(e,i,s){var n=t("body"),o=s.options;n.css(' +
        '"cursor")&&(o._cursor=n.css("cursor")),n.css("cursor",o.cursor)}' +
        ',stop:function(e,i,s){var n=s.options;n._cursor&&t("body").css("' +
        'cursor",n._cursor)}}),t.ui.plugin.add("draggable","opacity",{sta' +
        'rt:function(e,i,s){var n=t(i.helper),o=s.options;n.css("opacity"' +
        ')&&(o._opacity=n.css("opacity")),n.css("opacity",o.opacity)},sto' +
        'p:function(e,i,s){var n=s.options;n._opacity&&t(i.helper).css("o' +
        'pacity",n._opacity)}}),t.ui.plugin.add("draggable","scroll",{sta' +
        'rt:function(t,e,i){i.scrollParentNotHidden||(i.scrollParentNotHi' +
        'dden=i.helper.scrollParent(!1)),i.scrollParentNotHidden[0]!==i.d' +
        'ocument[0]&&"HTML"!==i.scrollParentNotHidden[0].tagName&&(i.over' +
        'flowOffset=i.scrollParentNotHidden.offset())},drag:function(e,i,' +
        's){var n=s.options,o=!1,a=s.scrollParentNotHidden[0],r=s.documen' +
        't[0];a!==r&&"HTML"!==a.tagName?(n.axis&&"x"===n.axis||(s.overflo' +
        'wOffset.top+a.offsetHeight-e.pageY<n.scrollSensitivity?a.scrollT' +
        'op=o=a.scrollTop+n.scrollSpeed:e.pageY-s.overflowOffset.top<n.sc' +
        'rollSensitivity&&(a.scrollTop=o=a.scrollTop-n.scrollSpeed)),n.ax' +
        'is&&"y"===n.axis||(s.overflowOffset.left+a.offsetWidth-e.pageX<n' +
        '.scrollSensitivity?a.scrollLeft=o=a.scrollLeft+n.scrollSpeed:e.p' +
        'ageX-s.overflowOffset.left<n.scrollSensitivity&&(a.scrollLeft=o=' +
        'a.scrollLeft-n.scrollSpeed))):(n.axis&&"x"===n.axis||(e.pageY-t(' +
        'r).scrollTop()<n.scrollSensitivity?o=t(r).scrollTop(t(r).scrollT' +
        'op()-n.scrollSpeed):t(window).height()-(e.pageY-t(r).scrollTop()' +
        ')<n.scrollSensitivity&&(o=t(r).scrollTop(t(r).scrollTop()+n.scro' +
        'llSpeed))),n.axis&&"y"===n.axis||(e.pageX-t(r).scrollLeft()<n.sc' +
        'rollSensitivity?o=t(r).scrollLeft(t(r).scrollLeft()-n.scrollSpee' +
        'd):t(window).width()-(e.pageX-t(r).scrollLeft())<n.scrollSensiti' +
        'vity&&(o=t(r).scrollLeft(t(r).scrollLeft()+n.scrollSpeed)))),o!=' +
        '=!1&&t.ui.ddmanager&&!n.dropBehaviour&&t.ui.ddmanager.prepareOff' +
        'sets(s,e)}}),t.ui.plugin.add("draggable","snap",{start:function(' +
        'e,i,s){var n=s.options;s.snapElements=[],t(n.snap.constructor!==' +
        'String?n.snap.items||":data(ui-draggable)":n.snap).each(function' +
        '(){var e=t(this),i=e.offset();this!==s.element[0]&&s.snapElement' +
        's.push({item:this,width:e.outerWidth(),height:e.outerHeight(),to' +
        'p:i.top,left:i.left})})},drag:function(e,i,s){var n,o,a,r,l,h,u,' +
        'c,d,p,f=s.options,m=f.snapTolerance,g=i.offset.left,_=g+s.helper' +
        'Proportions.width,v=i.offset.top,b=v+s.helperProportions.height;' +
        'for(d=s.snapElements.length-1;d>=0;d--)l=s.snapElements[d].left-' +
        's.margins.left,h=l+s.snapElements[d].width,u=s.snapElements[d].t' +
        'op-s.margins.top,c=u+s.snapElements[d].height,l-m>_||g>h+m||u-m>' +
        'b||v>c+m||!t.contains(s.snapElements[d].item.ownerDocument,s.sna' +
        'pElements[d].item)?(s.snapElements[d].snapping&&s.options.snap.r' +
        'elease&&s.options.snap.release.call(s.element,e,t.extend(s._uiHa' +
        'sh(),{snapItem:s.snapElements[d].item})),s.snapElements[d].snapp' +
        'ing=!1):("inner"!==f.snapMode&&(n=m>=Math.abs(u-b),o=m>=Math.abs' +
        '(c-v),a=m>=Math.abs(l-_),r=m>=Math.abs(h-g),n&&(i.position.top=s' +
        '._convertPositionTo("relative",{top:u-s.helperProportions.height' +
        ',left:0}).top),o&&(i.position.top=s._convertPositionTo("relative' +
        '",'
      
        '{top:c,left:0}).top),a&&(i.position.left=s._convertPositionTo("r' +
        'elative",{top:0,left:l-s.helperProportions.width}).left),r&&(i.p' +
        'osition.left=s._convertPositionTo("relative",{top:0,left:h}).lef' +
        't)),p=n||o||a||r,"outer"!==f.snapMode&&(n=m>=Math.abs(u-v),o=m>=' +
        'Math.abs(c-b),a=m>=Math.abs(l-g),r=m>=Math.abs(h-_),n&&(i.positi' +
        'on.top=s._convertPositionTo("relative",{top:u,left:0}).top),o&&(' +
        'i.position.top=s._convertPositionTo("relative",{top:c-s.helperPr' +
        'oportions.height,left:0}).top),a&&(i.position.left=s._convertPos' +
        'itionTo("relative",{top:0,left:l}).left),r&&(i.position.left=s._' +
        'convertPositionTo("relative",{top:0,left:h-s.helperProportions.w' +
        'idth}).left)),!s.snapElements[d].snapping&&(n||o||a||r||p)&&s.op' +
        'tions.snap.snap&&s.options.snap.snap.call(s.element,e,t.extend(s' +
        '._uiHash(),{snapItem:s.snapElements[d].item})),s.snapElements[d]' +
        '.snapping=n||o||a||r||p)}}),t.ui.plugin.add("draggable","stack",' +
        '{start:function(e,i,s){var n,o=s.options,a=t.makeArray(t(o.stack' +
        ')).sort(function(e,i){return(parseInt(t(e).css("zIndex"),10)||0)' +
        '-(parseInt(t(i).css("zIndex"),10)||0)});a.length&&(n=parseInt(t(' +
        'a[0]).css("zIndex"),10)||0,t(a).each(function(e){t(this).css("zI' +
        'ndex",n+e)}),this.css("zIndex",n+a.length))}}),t.ui.plugin.add("' +
        'draggable","zIndex",{start:function(e,i,s){var n=t(i.helper),o=s' +
        '.options;n.css("zIndex")&&(o._zIndex=n.css("zIndex")),n.css("zIn' +
        'dex",o.zIndex)},stop:function(e,i,s){var n=s.options;n._zIndex&&' +
        't(i.helper).css("zIndex",n._zIndex)}}),t.ui.draggable,t.widget("' +
        'ui.droppable",{version:"1.12.1",widgetEventPrefix:"drop",options' +
        ':{accept:"*",addClasses:!0,greedy:!1,scope:"default",tolerance:"' +
        'intersect",activate:null,deactivate:null,drop:null,out:null,over' +
        ':null},_create:function(){var e,i=this.options,s=i.accept;this.i' +
        'sover=!1,this.isout=!0,this.accept=t.isFunction(s)?s:function(t)' +
        '{return t.is(s)},this.proportions=function(){return arguments.le' +
        'ngth?(e=arguments[0],void 0):e?e:e={width:this.element[0].offset' +
        'Width,height:this.element[0].offsetHeight}},this._addToManager(i' +
        '.scope),i.addClasses&&this._addClass("ui-droppable")},_addToMana' +
        'ger:function(e){t.ui.ddmanager.droppables[e]=t.ui.ddmanager.drop' +
        'pables[e]||[],t.ui.ddmanager.droppables[e].push(this)},_splice:f' +
        'unction(t){for(var e=0;t.length>e;e++)t[e]===this&&t.splice(e,1)' +
        '},_destroy:function(){var e=t.ui.ddmanager.droppables[this.optio' +
        'ns.scope];this._splice(e)},_setOption:function(e,i){if("accept"=' +
        '==e)this.accept=t.isFunction(i)?i:function(t){return t.is(i)};el' +
        'se if("scope"===e){var s=t.ui.ddmanager.droppables[this.options.' +
        'scope];this._splice(s),this._addToManager(i)}this._super(e,i)},_' +
        'activate:function(e){var i=t.ui.ddmanager.current;this._addActiv' +
        'eClass(),i&&this._trigger("activate",e,this.ui(i))},_deactivate:' +
        'function(e){var i=t.ui.ddmanager.current;this._removeActiveClass' +
        '(),i&&this._trigger("deactivate",e,this.ui(i))},_over:function(e' +
        '){var i=t.ui.ddmanager.current;i&&(i.currentItem||i.element)[0]!' +
        '==this.element[0]&&this.accept.call(this.element[0],i.currentIte' +
        'm||i.element)&&(this._addHoverClass(),this._trigger("over",e,thi' +
        's.ui(i)))},_out:function(e){var i=t.ui.ddmanager.current;i&&(i.c' +
        'urrentItem||i.element)[0]!==this.element[0]&&this.accept.call(th' +
        'is.element[0],i.currentItem||i.element)&&(this._removeHoverClass' +
        '(),this._trigger("out",e,this.ui(i)))},_drop:function(e,i){var s' +
        '=i||t.ui.ddmanager.current,n=!1;return s&&(s.currentItem||s.elem' +
        'ent)[0]!==this.element[0]?(this.element.find(":data(ui-droppable' +
        ')").not(".ui-draggable-dragging").each(function(){var i=t(this).' +
        'droppable("instance");return i.options.greedy&&!i.options.disabl' +
        'ed&&i.options.scope===s.options.scope&&i.accept.call(i.element[0' +
        '],s.currentItem||s.element)&&c(s,t.extend(i,{offset:i.element.of' +
        'fset()}),i.options.tolerance,e)?(n=!0,!1):void 0}),n?!1:this.acc' +
        'ept.call(this.element[0],s.currentItem||s.element)?(this._remove' +
        'ActiveClass(),this._removeHoverClass(),this._trigger("drop",e,th' +
        'is.ui(s)),this.element):!1):!1},ui:function(t){return{draggable:' +
        't.currentItem||t.element,helper:t.helper,position:t.position,off' +
        'set:t.positionAbs}},_addHoverClass:function(){this._addClass("ui' +
        '-droppable-'
      
        'hover")},_removeHoverClass:function(){this._removeClass("ui-drop' +
        'pable-hover")},_addActiveClass:function(){this._addClass("ui-dro' +
        'ppable-active")},_removeActiveClass:function(){this._removeClass' +
        '("ui-droppable-active")}});var c=t.ui.intersect=function(){funct' +
        'ion t(t,e,i){return t>=e&&e+i>t}return function(e,i,s,n){if(!i.o' +
        'ffset)return!1;var o=(e.positionAbs||e.position.absolute).left+e' +
        '.margins.left,a=(e.positionAbs||e.position.absolute).top+e.margi' +
        'ns.top,r=o+e.helperProportions.width,l=a+e.helperProportions.hei' +
        'ght,h=i.offset.left,u=i.offset.top,c=h+i.proportions().width,d=u' +
        '+i.proportions().height;switch(s){case"fit":return o>=h&&c>=r&&a' +
        '>=u&&d>=l;case"intersect":return o+e.helperProportions.width/2>h' +
        '&&c>r-e.helperProportions.width/2&&a+e.helperProportions.height/' +
        '2>u&&d>l-e.helperProportions.height/2;case"pointer":return t(n.p' +
        'ageY,u,i.proportions().height)&&t(n.pageX,h,i.proportions().widt' +
        'h);case"touch":return(a>=u&&d>=a||l>=u&&d>=l||u>a&&l>d)&&(o>=h&&' +
        'c>=o||r>=h&&c>=r||h>o&&r>c);default:return!1}}}();t.ui.ddmanager' +
        '={current:null,droppables:{"default":[]},prepareOffsets:function' +
        '(e,i){var s,n,o=t.ui.ddmanager.droppables[e.options.scope]||[],a' +
        '=i?i.type:null,r=(e.currentItem||e.element).find(":data(ui-dropp' +
        'able)").addBack();t:for(s=0;o.length>s;s++)if(!(o[s].options.dis' +
        'abled||e&&!o[s].accept.call(o[s].element[0],e.currentItem||e.ele' +
        'ment))){for(n=0;r.length>n;n++)if(r[n]===o[s].element[0]){o[s].p' +
        'roportions().height=0;continue t}o[s].visible="none"!==o[s].elem' +
        'ent.css("display"),o[s].visible&&("mousedown"===a&&o[s]._activat' +
        'e.call(o[s],i),o[s].offset=o[s].element.offset(),o[s].proportion' +
        's({width:o[s].element[0].offsetWidth,height:o[s].element[0].offs' +
        'etHeight}))}},drop:function(e,i){var s=!1;return t.each((t.ui.dd' +
        'manager.droppables[e.options.scope]||[]).slice(),function(){this' +
        '.options&&(!this.options.disabled&&this.visible&&c(e,this,this.o' +
        'ptions.tolerance,i)&&(s=this._drop.call(this,i)||s),!this.option' +
        's.disabled&&this.visible&&this.accept.call(this.element[0],e.cur' +
        'rentItem||e.element)&&(this.isout=!0,this.isover=!1,this._deacti' +
        'vate.call(this,i)))}),s},dragStart:function(e,i){e.element.paren' +
        'tsUntil("body").on("scroll.droppable",function(){e.options.refre' +
        'shPositions||t.ui.ddmanager.prepareOffsets(e,i)})},drag:function' +
        '(e,i){e.options.refreshPositions&&t.ui.ddmanager.prepareOffsets(' +
        'e,i),t.each(t.ui.ddmanager.droppables[e.options.scope]||[],funct' +
        'ion(){if(!this.options.disabled&&!this.greedyChild&&this.visible' +
        '){var s,n,o,a=c(e,this,this.options.tolerance,i),r=!a&&this.isov' +
        'er?"isout":a&&!this.isover?"isover":null;r&&(this.options.greedy' +
        '&&(n=this.options.scope,o=this.element.parents(":data(ui-droppab' +
        'le)").filter(function(){return t(this).droppable("instance").opt' +
        'ions.scope===n}),o.length&&(s=t(o[0]).droppable("instance"),s.gr' +
        'eedyChild="isover"===r)),s&&"isover"===r&&(s.isover=!1,s.isout=!' +
        '0,s._out.call(s,i)),this[r]=!0,this["isout"===r?"isover":"isout"' +
        ']=!1,this["isover"===r?"_over":"_out"].call(this,i),s&&"isout"==' +
        '=r&&(s.isout=!1,s.isover=!0,s._over.call(s,i)))}})},dragStop:fun' +
        'ction(e,i){e.element.parentsUntil("body").off("scroll.droppable"' +
        '),e.options.refreshPositions||t.ui.ddmanager.prepareOffsets(e,i)' +
        '}},t.uiBackCompat!==!1&&t.widget("ui.droppable",t.ui.droppable,{' +
        'options:{hoverClass:!1,activeClass:!1},_addActiveClass:function(' +
        '){this._super(),this.options.activeClass&&this.element.addClass(' +
        'this.options.activeClass)},_removeActiveClass:function(){this._s' +
        'uper(),this.options.activeClass&&this.element.removeClass(this.o' +
        'ptions.activeClass)},_addHoverClass:function(){this._super(),thi' +
        's.options.hoverClass&&this.element.addClass(this.options.hoverCl' +
        'ass)},_removeHoverClass:function(){this._super(),this.options.ho' +
        'verClass&&this.element.removeClass(this.options.hoverClass)}}),t' +
        '.ui.droppable,t.widget("ui.resizable",t.ui.mouse,{version:"1.12.' +
        '1",widgetEventPrefix:"resize",options:{alsoResize:!1,animate:!1,' +
        'animateDuration:"slow",animateEasing:"swing",aspectRatio:!1,auto' +
        'Hide:!1,classes:{"ui-resizable-se":"ui-icon ui-icon-gripsmall-di' +
        'agonal-'
      
        'se"},containment:!1,ghost:!1,grid:!1,handles:"e,s,se",helper:!1,' +
        'maxHeight:null,maxWidth:null,minHeight:10,minWidth:10,zIndex:90,' +
        'resize:null,start:null,stop:null},_num:function(t){return parseF' +
        'loat(t)||0},_isNumber:function(t){return!isNaN(parseFloat(t))},_' +
        'hasScroll:function(e,i){if("hidden"===t(e).css("overflow"))retur' +
        'n!1;var s=i&&"left"===i?"scrollLeft":"scrollTop",n=!1;return e[s' +
        ']>0?!0:(e[s]=1,n=e[s]>0,e[s]=0,n)},_create:function(){var e,i=th' +
        'is.options,s=this;this._addClass("ui-resizable"),t.extend(this,{' +
        '_aspectRatio:!!i.aspectRatio,aspectRatio:i.aspectRatio,originalE' +
        'lement:this.element,_proportionallyResizeElements:[],_helper:i.h' +
        'elper||i.ghost||i.animate?i.helper||"ui-resizable-helper":null})' +
        ',this.element[0].nodeName.match(/^(canvas|textarea|input|select|' +
        'button|img)$/i)&&(this.element.wrap(t("<div class='#39'ui-wrapper'#39' s' +
        'tyle='#39'overflow: hidden;'#39'></div>").css({position:this.element.css' +
        '("position"),width:this.element.outerWidth(),height:this.element' +
        '.outerHeight(),top:this.element.css("top"),left:this.element.css' +
        '("left")})),this.element=this.element.parent().data("ui-resizabl' +
        'e",this.element.resizable("instance")),this.elementIsWrapper=!0,' +
        'e={marginTop:this.originalElement.css("marginTop"),marginRight:t' +
        'his.originalElement.css("marginRight"),marginBottom:this.origina' +
        'lElement.css("marginBottom"),marginLeft:this.originalElement.css' +
        '("marginLeft")},this.element.css(e),this.originalElement.css("ma' +
        'rgin",0),this.originalResizeStyle=this.originalElement.css("resi' +
        'ze"),this.originalElement.css("resize","none"),this._proportiona' +
        'llyResizeElements.push(this.originalElement.css({position:"stati' +
        'c",zoom:1,display:"block"})),this.originalElement.css(e),this._p' +
        'roportionallyResize()),this._setupHandles(),i.autoHide&&t(this.e' +
        'lement).on("mouseenter",function(){i.disabled||(s._removeClass("' +
        'ui-resizable-autohide"),s._handles.show())}).on("mouseleave",fun' +
        'ction(){i.disabled||s.resizing||(s._addClass("ui-resizable-autoh' +
        'ide"),s._handles.hide())}),this._mouseInit()},_destroy:function(' +
        '){this._mouseDestroy();var e,i=function(e){t(e).removeData("resi' +
        'zable").removeData("ui-resizable").off(".resizable").find(".ui-r' +
        'esizable-handle").remove()};return this.elementIsWrapper&&(i(thi' +
        's.element),e=this.element,this.originalElement.css({position:e.c' +
        'ss("position"),width:e.outerWidth(),height:e.outerHeight(),top:e' +
        '.css("top"),left:e.css("left")}).insertAfter(e),e.remove()),this' +
        '.originalElement.css("resize",this.originalResizeStyle),i(this.o' +
        'riginalElement),this},_setOption:function(t,e){switch(this._supe' +
        'r(t,e),t){case"handles":this._removeHandles(),this._setupHandles' +
        '();break;default:}},_setupHandles:function(){var e,i,s,n,o,a=thi' +
        's.options,r=this;if(this.handles=a.handles||(t(".ui-resizable-ha' +
        'ndle",this.element).length?{n:".ui-resizable-n",e:".ui-resizable' +
        '-e",s:".ui-resizable-s",w:".ui-resizable-w",se:".ui-resizable-se' +
        '",sw:".ui-resizable-sw",ne:".ui-resizable-ne",nw:".ui-resizable-' +
        'nw"}:"e,s,se"),this._handles=t(),this.handles.constructor===Stri' +
        'ng)for("all"===this.handles&&(this.handles="n,e,s,w,se,sw,ne,nw"' +
        '),s=this.handles.split(","),this.handles={},i=0;s.length>i;i++)e' +
        '=t.trim(s[i]),n="ui-resizable-"+e,o=t("<div>"),this._addClass(o,' +
        '"ui-resizable-handle "+n),o.css({zIndex:a.zIndex}),this.handles[' +
        'e]=".ui-resizable-"+e,this.element.append(o);this._renderAxis=fu' +
        'nction(e){var i,s,n,o;e=e||this.element;for(i in this.handles)th' +
        'is.handles[i].constructor===String?this.handles[i]=this.element.' +
        'children(this.handles[i]).first().show():(this.handles[i].jquery' +
        '||this.handles[i].nodeType)&&(this.handles[i]=t(this.handles[i])' +
        ',this._on(this.handles[i],{mousedown:r._mouseDown})),this.elemen' +
        'tIsWrapper&&this.originalElement[0].nodeName.match(/^(textarea|i' +
        'nput|select|button)$/i)&&(s=t(this.handles[i],this.element),o=/s' +
        'w|ne|nw|se|n|s/.test(i)?s.outerHeight():s.outerWidth(),n=["paddi' +
        'ng",/ne|nw|n/.test(i)?"Top":/se|sw|s/.test(i)?"Bottom":/^e$/.tes' +
        't(i)?"Right":"Left"].join(""),e.css(n,o),this._proportionallyRes' +
        'ize()),this._handles=this._handles.add(this.handles[i])},this._r' +
        'enderAxis(this.element),this.'
      
        '_handles=this._handles.add(this.element.find(".ui-resizable-hand' +
        'le")),this._handles.disableSelection(),this._handles.on("mouseov' +
        'er",function(){r.resizing||(this.className&&(o=this.className.ma' +
        'tch(/ui-resizable-(se|sw|ne|nw|n|e|s|w)/i)),r.axis=o&&o[1]?o[1]:' +
        '"se")}),a.autoHide&&(this._handles.hide(),this._addClass("ui-res' +
        'izable-autohide"))},_removeHandles:function(){this._handles.remo' +
        've()},_mouseCapture:function(e){var i,s,n=!1;for(i in this.handl' +
        'es)s=t(this.handles[i])[0],(s===e.target||t.contains(s,e.target)' +
        ')&&(n=!0);return!this.options.disabled&&n},_mouseStart:function(' +
        'e){var i,s,n,o=this.options,a=this.element;return this.resizing=' +
        '!0,this._renderProxy(),i=this._num(this.helper.css("left")),s=th' +
        'is._num(this.helper.css("top")),o.containment&&(i+=t(o.containme' +
        'nt).scrollLeft()||0,s+=t(o.containment).scrollTop()||0),this.off' +
        'set=this.helper.offset(),this.position={left:i,top:s},this.size=' +
        'this._helper?{width:this.helper.width(),height:this.helper.heigh' +
        't()}:{width:a.width(),height:a.height()},this.originalSize=this.' +
        '_helper?{width:a.outerWidth(),height:a.outerHeight()}:{width:a.w' +
        'idth(),height:a.height()},this.sizeDiff={width:a.outerWidth()-a.' +
        'width(),height:a.outerHeight()-a.height()},this.originalPosition' +
        '={left:i,top:s},this.originalMousePosition={left:e.pageX,top:e.p' +
        'ageY},this.aspectRatio="number"==typeof o.aspectRatio?o.aspectRa' +
        'tio:this.originalSize.width/this.originalSize.height||1,n=t(".ui' +
        '-resizable-"+this.axis).css("cursor"),t("body").css("cursor","au' +
        'to"===n?this.axis+"-resize":n),this._addClass("ui-resizable-resi' +
        'zing"),this._propagate("start",e),!0},_mouseDrag:function(e){var' +
        ' i,s,n=this.originalMousePosition,o=this.axis,a=e.pageX-n.left||' +
        '0,r=e.pageY-n.top||0,l=this._change[o];return this._updatePrevPr' +
        'operties(),l?(i=l.apply(this,[e,a,r]),this._updateVirtualBoundar' +
        'ies(e.shiftKey),(this._aspectRatio||e.shiftKey)&&(i=this._update' +
        'Ratio(i,e)),i=this._respectSize(i,e),this._updateCache(i),this._' +
        'propagate("resize",e),s=this._applyChanges(),!this._helper&&this' +
        '._proportionallyResizeElements.length&&this._proportionallyResiz' +
        'e(),t.isEmptyObject(s)||(this._updatePrevProperties(),this._trig' +
        'ger("resize",e,this.ui()),this._applyChanges()),!1):!1},_mouseSt' +
        'op:function(e){this.resizing=!1;var i,s,n,o,a,r,l,h=this.options' +
        ',u=this;return this._helper&&(i=this._proportionallyResizeElemen' +
        'ts,s=i.length&&/textarea/i.test(i[0].nodeName),n=s&&this._hasScr' +
        'oll(i[0],"left")?0:u.sizeDiff.height,o=s?0:u.sizeDiff.width,a={w' +
        'idth:u.helper.width()-o,height:u.helper.height()-n},r=parseFloat' +
        '(u.element.css("left"))+(u.position.left-u.originalPosition.left' +
        ')||null,l=parseFloat(u.element.css("top"))+(u.position.top-u.ori' +
        'ginalPosition.top)||null,h.animate||this.element.css(t.extend(a,' +
        '{top:l,left:r})),u.helper.height(u.size.height),u.helper.width(u' +
        '.size.width),this._helper&&!h.animate&&this._proportionallyResiz' +
        'e()),t("body").css("cursor","auto"),this._removeClass("ui-resiza' +
        'ble-resizing"),this._propagate("stop",e),this._helper&&this.help' +
        'er.remove(),!1},_updatePrevProperties:function(){this.prevPositi' +
        'on={top:this.position.top,left:this.position.left},this.prevSize' +
        '={width:this.size.width,height:this.size.height}},_applyChanges:' +
        'function(){var t={};return this.position.top!==this.prevPosition' +
        '.top&&(t.top=this.position.top+"px"),this.position.left!==this.p' +
        'revPosition.left&&(t.left=this.position.left+"px"),this.size.wid' +
        'th!==this.prevSize.width&&(t.width=this.size.width+"px"),this.si' +
        'ze.height!==this.prevSize.height&&(t.height=this.size.height+"px' +
        '"),this.helper.css(t),t},_updateVirtualBoundaries:function(t){va' +
        'r e,i,s,n,o,a=this.options;o={minWidth:this._isNumber(a.minWidth' +
        ')?a.minWidth:0,maxWidth:this._isNumber(a.maxWidth)?a.maxWidth:1/' +
        '0,minHeight:this._isNumber(a.minHeight)?a.minHeight:0,maxHeight:' +
        'this._isNumber(a.maxHeight)?a.maxHeight:1/0},(this._aspectRatio|' +
        '|t)&&(e=o.minHeight*this.aspectRatio,s=o.minWidth/this.aspectRat' +
        'io,i=o.maxHeight*this.aspectRatio,n=o.maxWidth/this.aspectRatio,' +
        'e>o.minWidth&&(o.minWidth=e),s>o.minHeight&&(o.minHeight=s),o.ma' +
        'xWidth>i&&(o.maxWidth=i),o.maxHeight>n&&(o.maxHeight=n)),this.'
      
        '_vBoundaries=o},_updateCache:function(t){this.offset=this.helper' +
        '.offset(),this._isNumber(t.left)&&(this.position.left=t.left),th' +
        'is._isNumber(t.top)&&(this.position.top=t.top),this._isNumber(t.' +
        'height)&&(this.size.height=t.height),this._isNumber(t.width)&&(t' +
        'his.size.width=t.width)},_updateRatio:function(t){var e=this.pos' +
        'ition,i=this.size,s=this.axis;return this._isNumber(t.height)?t.' +
        'width=t.height*this.aspectRatio:this._isNumber(t.width)&&(t.heig' +
        'ht=t.width/this.aspectRatio),"sw"===s&&(t.left=e.left+(i.width-t' +
        '.width),t.top=null),"nw"===s&&(t.top=e.top+(i.height-t.height),t' +
        '.left=e.left+(i.width-t.width)),t},_respectSize:function(t){var ' +
        'e=this._vBoundaries,i=this.axis,s=this._isNumber(t.width)&&e.max' +
        'Width&&e.maxWidth<t.width,n=this._isNumber(t.height)&&e.maxHeigh' +
        't&&e.maxHeight<t.height,o=this._isNumber(t.width)&&e.minWidth&&e' +
        '.minWidth>t.width,a=this._isNumber(t.height)&&e.minHeight&&e.min' +
        'Height>t.height,r=this.originalPosition.left+this.originalSize.w' +
        'idth,l=this.originalPosition.top+this.originalSize.height,h=/sw|' +
        'nw|w/.test(i),u=/nw|ne|n/.test(i);return o&&(t.width=e.minWidth)' +
        ',a&&(t.height=e.minHeight),s&&(t.width=e.maxWidth),n&&(t.height=' +
        'e.maxHeight),o&&h&&(t.left=r-e.minWidth),s&&h&&(t.left=r-e.maxWi' +
        'dth),a&&u&&(t.top=l-e.minHeight),n&&u&&(t.top=l-e.maxHeight),t.w' +
        'idth||t.height||t.left||!t.top?t.width||t.height||t.top||!t.left' +
        '||(t.left=null):t.top=null,t},_getPaddingPlusBorderDimensions:fu' +
        'nction(t){for(var e=0,i=[],s=[t.css("borderTopWidth"),t.css("bor' +
        'derRightWidth"),t.css("borderBottomWidth"),t.css("borderLeftWidt' +
        'h")],n=[t.css("paddingTop"),t.css("paddingRight"),t.css("padding' +
        'Bottom"),t.css("paddingLeft")];4>e;e++)i[e]=parseFloat(s[e])||0,' +
        'i[e]+=parseFloat(n[e])||0;return{height:i[0]+i[2],width:i[1]+i[3' +
        ']}},_proportionallyResize:function(){if(this._proportionallyResi' +
        'zeElements.length)for(var t,e=0,i=this.helper||this.element;this' +
        '._proportionallyResizeElements.length>e;e++)t=this._proportional' +
        'lyResizeElements[e],this.outerDimensions||(this.outerDimensions=' +
        'this._getPaddingPlusBorderDimensions(t)),t.css({height:i.height(' +
        ')-this.outerDimensions.height||0,width:i.width()-this.outerDimen' +
        'sions.width||0})},_renderProxy:function(){var e=this.element,i=t' +
        'his.options;this.elementOffset=e.offset(),this._helper?(this.hel' +
        'per=this.helper||t("<div style='#39'overflow:hidden;'#39'></div>"),this.' +
        '_addClass(this.helper,this._helper),this.helper.css({width:this.' +
        'element.outerWidth(),height:this.element.outerHeight(),position:' +
        '"absolute",left:this.elementOffset.left+"px",top:this.elementOff' +
        'set.top+"px",zIndex:++i.zIndex}),this.helper.appendTo("body").di' +
        'sableSelection()):this.helper=this.element},_change:{e:function(' +
        't,e){return{width:this.originalSize.width+e}},w:function(t,e){va' +
        'r i=this.originalSize,s=this.originalPosition;return{left:s.left' +
        '+e,width:i.width-e}},n:function(t,e,i){var s=this.originalSize,n' +
        '=this.originalPosition;return{top:n.top+i,height:s.height-i}},s:' +
        'function(t,e,i){return{height:this.originalSize.height+i}},se:fu' +
        'nction(e,i,s){return t.extend(this._change.s.apply(this,argument' +
        's),this._change.e.apply(this,[e,i,s]))},sw:function(e,i,s){retur' +
        'n t.extend(this._change.s.apply(this,arguments),this._change.w.a' +
        'pply(this,[e,i,s]))},ne:function(e,i,s){return t.extend(this._ch' +
        'ange.n.apply(this,arguments),this._change.e.apply(this,[e,i,s]))' +
        '},nw:function(e,i,s){return t.extend(this._change.n.apply(this,a' +
        'rguments),this._change.w.apply(this,[e,i,s]))}},_propagate:funct' +
        'ion(e,i){t.ui.plugin.call(this,e,[i,this.ui()]),"resize"!==e&&th' +
        'is._trigger(e,i,this.ui())},plugins:{},ui:function(){return{orig' +
        'inalElement:this.originalElement,element:this.element,helper:thi' +
        's.helper,position:this.position,size:this.size,originalSize:this' +
        '.originalSize,originalPosition:this.originalPosition}}}),t.ui.pl' +
        'ugin.add("resizable","animate",{stop:function(e){var i=t(this).r' +
        'esizable("instance"),s=i.options,n=i._proportionallyResizeElemen' +
        'ts,o=n.length&&/textarea/i.test(n[0].nodeName),a=o&&i._hasScroll' +
        '(n[0],"left")?0:i.sizeDiff.height,r=o?0:i.sizeDiff.width,l={widt' +
        'h:i.size.width-r,height:i.size.height-a},h=parseFloat(i.element.' +
        'css("left"))+(i.position.left-'
      
        'i.originalPosition.left)||null,u=parseFloat(i.element.css("top")' +
        ')+(i.position.top-i.originalPosition.top)||null;i.element.animat' +
        'e(t.extend(l,u&&h?{top:u,left:h}:{}),{duration:s.animateDuration' +
        ',easing:s.animateEasing,step:function(){var s={width:parseFloat(' +
        'i.element.css("width")),height:parseFloat(i.element.css("height"' +
        ')),top:parseFloat(i.element.css("top")),left:parseFloat(i.elemen' +
        't.css("left"))};n&&n.length&&t(n[0]).css({width:s.width,height:s' +
        '.height}),i._updateCache(s),i._propagate("resize",e)}})}}),t.ui.' +
        'plugin.add("resizable","containment",{start:function(){var e,i,s' +
        ',n,o,a,r,l=t(this).resizable("instance"),h=l.options,u=l.element' +
        ',c=h.containment,d=c instanceof t?c.get(0):/parent/.test(c)?u.pa' +
        'rent().get(0):c;d&&(l.containerElement=t(d),/document/.test(c)||' +
        'c===document?(l.containerOffset={left:0,top:0},l.containerPositi' +
        'on={left:0,top:0},l.parentData={element:t(document),left:0,top:0' +
        ',width:t(document).width(),height:t(document).height()||document' +
        '.body.parentNode.scrollHeight}):(e=t(d),i=[],t(["Top","Right","L' +
        'eft","Bottom"]).each(function(t,s){i[t]=l._num(e.css("padding"+s' +
        '))}),l.containerOffset=e.offset(),l.containerPosition=e.position' +
        '(),l.containerSize={height:e.innerHeight()-i[3],width:e.innerWid' +
        'th()-i[1]},s=l.containerOffset,n=l.containerSize.height,o=l.cont' +
        'ainerSize.width,a=l._hasScroll(d,"left")?d.scrollWidth:o,r=l._ha' +
        'sScroll(d)?d.scrollHeight:n,l.parentData={element:d,left:s.left,' +
        'top:s.top,width:a,height:r}))},resize:function(e){var i,s,n,o,a=' +
        't(this).resizable("instance"),r=a.options,l=a.containerOffset,h=' +
        'a.position,u=a._aspectRatio||e.shiftKey,c={top:0,left:0},d=a.con' +
        'tainerElement,p=!0;d[0]!==document&&/static/.test(d.css("positio' +
        'n"))&&(c=l),h.left<(a._helper?l.left:0)&&(a.size.width=a.size.wi' +
        'dth+(a._helper?a.position.left-l.left:a.position.left-c.left),u&' +
        '&(a.size.height=a.size.width/a.aspectRatio,p=!1),a.position.left' +
        '=r.helper?l.left:0),h.top<(a._helper?l.top:0)&&(a.size.height=a.' +
        'size.height+(a._helper?a.position.top-l.top:a.position.top),u&&(' +
        'a.size.width=a.size.height*a.aspectRatio,p=!1),a.position.top=a.' +
        '_helper?l.top:0),n=a.containerElement.get(0)===a.element.parent(' +
        ').get(0),o=/relative|absolute/.test(a.containerElement.css("posi' +
        'tion")),n&&o?(a.offset.left=a.parentData.left+a.position.left,a.' +
        'offset.top=a.parentData.top+a.position.top):(a.offset.left=a.ele' +
        'ment.offset().left,a.offset.top=a.element.offset().top),i=Math.a' +
        'bs(a.sizeDiff.width+(a._helper?a.offset.left-c.left:a.offset.lef' +
        't-l.left)),s=Math.abs(a.sizeDiff.height+(a._helper?a.offset.top-' +
        'c.top:a.offset.top-l.top)),i+a.size.width>=a.parentData.width&&(' +
        'a.size.width=a.parentData.width-i,u&&(a.size.height=a.size.width' +
        '/a.aspectRatio,p=!1)),s+a.size.height>=a.parentData.height&&(a.s' +
        'ize.height=a.parentData.height-s,u&&(a.size.width=a.size.height*' +
        'a.aspectRatio,p=!1)),p||(a.position.left=a.prevPosition.left,a.p' +
        'osition.top=a.prevPosition.top,a.size.width=a.prevSize.width,a.s' +
        'ize.height=a.prevSize.')
    Left = 8
    Top = 272
  end
end
