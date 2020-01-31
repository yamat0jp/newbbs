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
      OnAction = WebModule1usrdelAction
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
  Width = 909
  object articles: TDataSetPageProducer
    HTMLDoc.Strings = (
      '                                            <hr size=1>'
      
        #9'<section id=number><a name=<#number>></a><a href=<#uri>/jump?db' +
        '=<#dbnum>&num=<#number>'
      '         style=text-decoration:none>'
      #9#9'[<#number>]</a></section>'
      #9'<section id=title><#title></section>'
      #9'<section id=name>'#12288'Name:<h1><#name></h1></section>'
      #9'<section id=date>'#12288'Date:<h1><#date></h1></section>'
      #9'<p>'#9661#9650#9661#9650#9661#9650#9661
      #9'<section id=comment><#comment></section>'
      
        '<section id=master style=text-align:right><a href=<#uri>/alert?d' +
        'b=<#dbnum>&num=<#number>>'#22577#21578'</a></section>'
      #9'<p>'#9651#9660#9651#9660#9651#9660#9651)
    DataSet = FDTable2
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
      
        '    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.' +
        'com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJz' +
        'ZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" c' +
        'rossorigin="anonymous">'
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
      
        '    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.j' +
        's" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp' +
        '4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>'
      
        '    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.j' +
        's/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRax' +
        'vfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="ano' +
        'nymous"></script>'
      
        '    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.' +
        '2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2j' +
        'oaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonym' +
        'ous"></script>'
      '<#pr>'
      '    <a href=<#uri>/ style=text-decoration:none><#title2></a>'
      ''
      '    <#header>'
      '    <p><br></p>'
      '    <div class="container p-5">'
      
        '    <button class="btn shadow" data-toggle=collapse data-target=' +
        '.item1'
      '      aria-expanded=false aria-controls="item1-a item1-b">'
      '    '#12402#12425#12367'</button>'
      '    <div class="row col-6">'
      '      <div class="col-4">'
      
        '    <div class="collapse item1" id=item1-a><div class="card card' +
        '-body">'
      
        '    <form action=<#uri>/userdel?db=<#dbnum> method="post" id=sea' +
        'rch>'
      
        '      <label for=id1>'#35352#20107'No</label><input id=id1 class="form-contr' +
        'ol" name="num">'
      
        '      <label for=pass1>Pass</label><input id=pass1 class="form-c' +
        'ontrol mb-3" type="password" name="password">'
      '      <button type="submit">'#21066#38500'</button>'
      '    </form>'
      '    </div></div>'
      '      </div>'
      '      <div class="col">'
      
        '    <div class="collapse item1" id=item1-b><div class="card card' +
        '-body">'
      '    <form action=<#uri>/jump?db=<#dbnum> method=post id=search>'
      '      <div class="input-group">'
      
        '      <div class=input-group-prepend><span class=input-group-tex' +
        't>'#35352#20107'No</span></div>'
      '      <input id=number1 class="form-control" name=num>'
      
        '      <div class=input-group-append><button type=submit>'#31227#21205'</butt' +
        'on></div>'
      '      </div>'
      '    </form>'
      '    </div></div>'
      '      </div>'
      '    </div>'
      '    </div>'
      '    <p><br></p>'
      '    <p><a href=<#uri>/search?db=<#dbnum>>'#26908#32034#12506#12540#12472'</a></p>'
      '    <p style=text-align:right><a href=#article>'#19979#12408#31227#21205'</a></p>'
      '    <p style=text-align:center><#database></p>'
      '    <#footer>'
      '  <#article>'
      #9'<a name=article></a>'
      #9'<p style=text-align:right><a href=#top>Top'#12408#31227#21205'</a></p>'
      '  <#footer>'
      
        '    <p style=text-align:center><a href="<#uri>/admin?db=<#dbnum>' +
        '">'#31649#29702#32773#29992#12525#12464#12452#12531'</a></p>'
      '  </body>'
      '</html>')
    DataSet = FDTable3
    OnHTMLTag = indexHTMLTag
    Left = 112
    Top = 32
  end
  object admin: TDataSetTableProducer
    Columns = <
      item
        Custom = 'width=10%'
        FieldName = 'CHECK'
      end
      item
        Custom = 'width=10%'
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
    DataSet = FDTable2
    RowAttributes.Align = haCenter
    TableAttributes.Align = haCenter
    TableAttributes.BgColor = 'White'
    TableAttributes.Width = 80
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
      '    <form action="<#uri>/search<#query>" method="post">'
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
      '      <p><a href="<#select>">'#25522#31034#26495#12408#25147#12427
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
    DataSet = FDTable4
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
      '<#area>'
      #9'<p><br>'
      '<p>'#38283#30330#32773#12398#30342#12373#12435
      '<p>pybbs'#12398'API'
      '<p>ArticleAPI ... ~/read/api/<b>dbname</b>/<b>number</b>'
      '<p>ListAPI ... ~/headline/api'
      '<p><br>'
      '<p>'
      '<p>'#21033#29992#35215#32004
      '<p>'#12371#12428#12363#12425#26360#12365#12414#12377
      '<p style=text-align:center><a href=<#uri>/>'#25147#12427'</a>'
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
      
        ' <script type="text/javascript" src="//ajax.googleapis.com/ajax/' +
        'libs/jquery/2.1.4/jquery.min.js"></script>'
      
        ' <link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jq' +
        'ueryui/1.10.4/themes/smoothness/jquery-ui.css" />'
      
        ' <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jq' +
        'uery-ui.min.js"></script>'
      
        ' <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com' +
        '/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqF' +
        'Gwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" cros' +
        'sorigin="anonymous">'
      '</head>'
      '<body>'
      
        '    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.j' +
        's" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp' +
        '4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>'
      
        '    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.j' +
        's/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRax' +
        'vfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="ano' +
        'nymous"></script>'
      
        '    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.' +
        '2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2j' +
        'oaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonym' +
        'ous"></script>'
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
      '<div id="slide-1" class="carousel slide" data-ride="carousel">'
      '  <ol class="carousel-indicators">'
      '    <#indicator>'
      '  </ol>'
      '  <div class="carousel-inner bg-dark"><#slide></div>'
      ''
      
        #9'<a class="carousel-control-prev" href="#slide-1" role="button" ' +
        'data-slide="prev">'
      
        '          <span class="carousel-control-prev-icon" aria-hidden="' +
        'true"></span>'
      '          <span class="sr-only">Previous</span>'
      '        </a>'
      
        '        <a class="carousel-control-next" href="#slide-1" role="b' +
        'utton" data-slide="next">'
      
        '          <span class="carousel-control-next-icon" aria-hidden="' +
        'true"></span>'
      '          <span class="sr-only">Next></span>'
      '        </a>'
      '</div>'
      '<p>'
      '<p>'#12288'<em style="background-color: aqua;">'#12288#12288#12288#12288'</em>'#12539#12539#12539'new!'
      
        '        <p>[ <a href=<#uri>/index?db=<#dbnum>><#info></a> ] ='#12362#30693#12425 +
        #12379' <p>[ <a href="<#uri>/master">master'
      
        '</a> ] ='#31649#29702#20154'<div class="fb-like" data-href="http://pybbs.herokuap' +
        'p.com" data-layout="box_count" data-action="like" data-size="sma' +
        'll" data-show-faces="true" data-share="false"></div>'
      
        '<p><a href="http://www.xn--gckj5d1ktb3488cn4q.jp/" target="_blan' +
        'k"><img alt="'#28961#26009#12459#12454#12531#12479#12540'" src="http://www.xn--gckj5d1ktb3488cn4q.jp/' +
        'counter.php?id=pybbs" border="0"></a>'
      '<footer>'
      '<p><br>'
      '<p><a href=<#uri>/title>'#12479#12452#12488#12523#34920#31034'</a>'
      '<p><a href="<#uri>/help">'#20351#12356#26041#26696#20869
      '</a>'
      '<p><a href=<#uri>/search>'#26908#32034'</a>'
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
      '<form action=<#uri>/master method=post>'
      '<p><#request>'
      '<input type=radio name=delete value=some checked>'#21066#38500#28168#12415#12434#28040#21435#12288
      '<input type=radio name=delete value=all>'#12377#12409#12390#28040#21435
      '<input type=submit value="'#36865#20449'">'
      '</form>'
      '<p style=text-align:center><a href=<#uri>/logout>'#12525#12464#12450#12454#12488'</a>'
      '<p style=text-align:center><a href=<#uri>/>'#25147#12427'</a>'
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
    DataSet = FDTable4
    OnHTMLTag = alertHTMLTag
    Left = 48
    Top = 192
  end
  object mail: TPageProducer
    HTMLDoc.Strings = (
      '<!doctyle html>'
      '<html>'
      '<head><meta charset=utf-8></head>'
      '<body>'
      '<#pr>'
      '<form action=<#uri>/alert<#query>  method=post>'
      '  <#content>'
      '<textarea name=request></textarea>'
      '<input type=submit>'
      '<p style=text-align:center><a href=<#uri>/jump<#query>>'#25147#12427'</a>'
      '</form>'
      '</body></html>')
    OnHTMLTag = mailHTMLTag
    Left = 176
    Top = 144
  end
  object css2: TPageProducer
    HTMLDoc.Strings = (
      'section#number {'
      '    display:inline'
      '}'
      ''
      'section#title {'
      '    display:inline;'
      '    font-weight:bold;'
      '    font-size:1.2rem;'
      '    color:#D01166'
      '}'
      ''
      'section#name h1 {'
      '    font-size:1rem;'
      '    font-weight:bold;'
      '    color:#007000'
      '}'
      ''
      'section h1 {'
      '    font-size:1rem;'
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
      'button#custom {'
      #9'position:absolute;'
      #9'width:80px;'
      #9'height:30px;'
      #9'right:20px'
      '}'
      ''
      'body {'
      #9'line-height:1.5'
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
      '    <form action=<#uri>/regist?db=<#dbnum> method="post">'
      '      <p><br></p>'
      
        '      <div class="row justify-content-center"><div class="col-10' +
        '">'
      '      <div class="container">'
      '        <div class="form-row">'
      '        <div class="form-inline p-3">'
      '          <div class="input-group col-6">'
      
        '          <div class=input-group-prepend><span class=input-group' +
        '-text>'#12362#21517#21069'</span></div>'
      
        '            <input name="name" id=name1 class="form-control mr-5' +
        '0" value=<#cookie param=name>>'
      '          </div>'
      '          <div class="input-group col-6">'
      
        '          <div class=input-group-prepend><span class=input-group' +
        '-text>'#12479#12452#12488#12523'</span></div>'
      
        '            <input name="title" id=title1 class=form-control pla' +
        'ceholder="'#12479#12452#12488#12523#12394#12375'." value=<#title>>'
      
        '          <button class="btn btn-primary" type="submit">'#36865#20449'</butt' +
        'on>'
      '          </div>'
      '        </div>'
      '        </div>'
      '        <div class="form-row">'
      '          <div class="form-group align-self-center w-100">'
      
        '          <label for=text1>'#26412#25991'<span style=color:red>'#24517#38920'</span></la' +
        'bel>'
      
        '          <textarea id=text1 style="font-size:1.75em" name="comm' +
        'ent" rows=4'
      
        '                class="form-control w-100 sjadpw-lg" required pl' +
        'aceholder="'#12467#12513#12531#12488#12394#12393#12434#20837#21147#12375#12390#12367#12384#12373#12356'."><#raw></textarea>'
      '          </div>'
      '        </div>'
      '        <div class="form-row">'
      '          <div class="form-inline w-50">'
      '            <div class=input-group>'
      
        '            <div class=input-group-prepend><span class=input-gro' +
        'up-text>'#12497#12473#12527#12540#12489'</span></div>'
      
        '            <input id=password1 name="password" class="form-cont' +
        'rol col-4" type="password" placeholder="'#21066#38500#29992'" value=<#pass>>'
      '            </div>'
      '          </div>'
      '          <div class="form-group w-50">'
      '            <div class="custom-control custom-checkbox">'
      
        '            <input type="checkbox" id=check1 name="show" class=c' +
        'ustom-control-input value="true" <#check>>'
      
        '            <label class=custom-control-label for=check1>'#12503#12524#12499#12517#12540'</' +
        'label>'
      '            </div>'
      '          </div>'
      '        </div>'
      '        <div class="form-row justify-content-end">'
      '          <div class="form-inline">'
      
        '          <label for=aikotoba1>'#21512#35328#33865#12434#12402#12425#12364#12394#12391#20837#21147#12375#12390#12367#12384#12373#12356': genki'#12288'</label>' +
        '<input name=aikotoba id=aikotoba1 class="form-control col-2" typ' +
        'e=text value=<#cookie param=aikotoba>>'
      '          </div>'
      '        </div>'
      '      </div>'
      '      </div></div>'
      '    </form>'
      '    </header><#preview>')
    DataSet = FDTable1
    OnHTMLTag = headerHTMLTag
    Left = 240
    Top = 192
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
  object adhead: TPageProducer
    HTMLDoc.Strings = (
      '<#pr>'
      
        '<form method=post action=<#uri>/adminset?db=<#database> style=te' +
        'xt-align:center>'
      '    <label><p>'#12497#12473#12527#12540#12489#12398#22793#26356
      
        '      <input type="password" style="HEIGHT: 23px; WIDTH: 85px" n' +
        'ame="pass">'
      '       / '#30906#35469
      
        '      <input type=password style=height:23px;width:85px name=pas' +
        's2>'
      '      </p>'
      '    </label>'
      '    <p>'
      
        '    <input type="checkbox" value="on" name="mente" <#mente>>'#12513#12531#12486#12490 +
        #12531#12473#34920#31034'</p>'
      '    <p><input type="submit" value="'#22793#26356'"></p>'
      '    <p><a href="<#uri>/logout?db=<#database>">'#12525#12464#12450#12454#12488'</a></p>'
      '</form>'
      
        '<form action=<#uri>/admindel?db=<#database> method=post style=te' +
        'xt-align:center>')
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
      '<p style=text-align:center><a href=<#uri>/>'#25147#12427'</a>'
      '</body>'
      '</html>')
    OnHTMLTag = titleHTMLTag
    Left = 48
    Top = 256
  end
  object ti: TDataSetPageProducer
    HTMLDoc.Strings = (
      
        '<p style=font-weight:bold><a href=<#uri>/index?db=<#dbnum>><#dat' +
        'abase></a>'#8595'</p>'
      '<div>'#12479#12452#12488#12523': <#title> ; '#35352#20107#25968': <#count> ; '#26356#26032#26178#21051': <#date></div><p>'
      '')
    DataSet = FDQuery1
    OnHTMLTag = tiHTMLTag
    Left = 48
    Top = 320
  end
  object FDTable2: TFDTable
    IndexFieldNames = 'DBNUM;NUMBER'
    MasterSource = DataSource1
    MasterFields = 'DBNUM'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evLiveWindowParanoic]
    UpdateOptions.UpdateTableName = 'article'
    TableName = 'article'
    Left = 584
    Top = 120
    object FDTable2DBNUM: TIntegerField
      FieldName = 'DBNUM'
      Origin = 'DBNUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable2NUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = 'NUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable2TITLE: TWideStringField
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 160
    end
    object FDTable2NAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 160
    end
    object FDTable2COMMENT: TWideMemoField
      FieldName = 'COMMENT'
      Origin = 'COMMENT'
      BlobType = ftWideMemo
    end
    object FDTable2RAW: TWideMemoField
      FieldName = 'RAW'
      Origin = 'RAW'
      BlobType = ftWideMemo
    end
    object FDTable2DATE: TDateField
      FieldName = 'DATE'
      Origin = 'DATE'
    end
    object FDTable2PASS: TWideStringField
      FieldName = 'PASS'
      Origin = 'PASS'
      FixedChar = True
      Size = 40
    end
  end
  object FDTable5: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'images'
    TableName = 'images'
    Left = 712
    Top = 184
    object FDTable5id: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable5name: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'name'
      Origin = '`name`'
      Size = 30
    end
    object FDTable5source: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'source'
      Origin = '`source`'
      BlobType = ftWideMemo
    end
  end
  object FDTable4: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'req'
    TableName = 'req'
    Left = 712
    Top = 120
    object FDTable4ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDTable4DBNAME: TIntegerField
      FieldName = 'DBNAME'
      Origin = 'DBNAME'
    end
    object FDTable4POSNUM: TIntegerField
      FieldName = 'POSNUM'
      Origin = 'POSNUM'
    end
    object FDTable4DATE: TDateField
      FieldName = 'DATE'
      Origin = 'DATE'
      Required = True
    end
    object FDTable4REQUEST: TWideMemoField
      FieldName = 'REQUEST'
      Origin = 'REQUEST'
      BlobType = ftWideMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 520
    Top = 184
  end
  object FDTable3: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'setting'
    TableName = 'setting'
    Left = 648
    Top = 120
    object FDTable3TITLE: TWideStringField
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 160
    end
    object FDTable3TITLE2: TWideStringField
      FieldName = 'TITLE2'
      Origin = 'TITLE2'
      Size = 320
    end
    object FDTable3mente: TSmallintField
      FieldName = 'mente'
    end
    object FDTable3INFO: TIntegerField
      FieldName = 'INFO'
      Origin = 'INFO'
    end
    object FDTable3COUNT: TIntegerField
      FieldName = 'COUNT'
      Origin = 'COUNT'
    end
    object FDTable3password: TWideStringField
      FieldName = 'password'
      Size = 100
    end
    object FDTable3ng: TWideStringField
      FieldName = 'ng'
      Size = 300
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=first_sql')
    Left = 632
    Top = 56
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'DBNUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'dbname'
    TableName = 'dbname'
    Left = 520
    Top = 120
    object FDTable1DBNUM: TIntegerField
      FieldName = 'DBNUM'
      Origin = 'DBNUM'
      Required = True
    end
    object FDTable1DATABASE: TWideStringField
      FieldName = 'DATABASE'
      Origin = 'DATABASE'
      Required = True
      Size = 80
    end
  end
  object login: TPageProducer
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
      '    <form action=<#uri>/login method="post">'
      '    <p style=text-align:center>'
      '      <input type=text name=record value=<#database>>'
      '    '#9'  <input style=height:25px type="password" name="password">'
      '      <input type="submit" value="'#12525#12464#12452#12531'">'
      '    </p>'
      '    </form>'
      
        '      <p style=text-align:center><br><a href=<#uri>/ >TOP'#12408#31227#21205'</a>' +
        '</p>'
      '  </body>'
      '</html>')
    OnHTMLTag = loginHTMLTag
    Left = 296
    Top = 96
  end
  object footer: TPageProducer
    HTMLDoc.Strings = (
      '<p style=text-align:center>[ <#link> ] <#recent>')
    OnHTMLTag = footerHTMLTag
    Left = 112
    Top = 192
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 632
    Top = 256
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select dbnum,title,max(date) from article '
      ' group by dbnum order by max(date);')
    Left = 616
    Top = 184
  end
end
