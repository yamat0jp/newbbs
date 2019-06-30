object TWebModule1: TTWebModule1
  OldCreateOrder = False
  OnCreate = WebModuleCreate
  Actions = <
    item
      Name = 'top'
      PathInfo = '/'
      OnAction = TWebModule1topAction
    end
    item
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
      MethodType = mtGet
      Name = 'master'
      PathInfo = '/master'
      OnAction = page
    end>
  Height = 251
  Width = 436
  object articles: TDataSetPageProducer
    HTMLDoc.Strings = (
      '                                            <hr size=1>'
      
        #9'<section id=number><a name=<#number>></a><a href=/userdel?job=<' +
        '#number> style=text-decoration:none>'
      #9#9'[<#number>]</a></section>'
      #9'<section id=title><#title></section>'
      #9'<section id=name>'#12288'Name:<h1><#name></h1></section>'
      #9'<section id=date>'#12288'Date:<h1><#date></h1></section>'
      #9'<p>'#9661#9650#9661#9650#9661#9650#9661
      #9'<section id=comment><#comment></section>'
      
        '        <section id=master style=text-align:right><a href=/alert' +
        '?db=<#database>&num=<#number>>'#22577#21578'</a></section>'
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
      '    <title>'
      '    <#title>'
      '    </title>'
      '  </head>'
      '  <body>'
      ''
      '    <a href=/ style=text-decoration:none><#title2></a>'
      '    <header>'
      '    <a name=top></a>'
      '    <form action=/regist?db=<#database> method="post">'
      '      <table>'
      '        <tr><td>'
      
        '          <label><p>'#12362#21517#21069'</p><input name="name" class=name value=<' +
        '#cookie param=name>></label>'
      
        '          <label><p>'#12479#12452#12488#12523'</p><input name="title" class=title valu' +
        'e=<#cookie param=title> placeholder="'#12479#12452#12488#12523#12394#12375'."></label>'
      '          <input type="submit" value="'#36865#20449'">'
      '        </td></tr>'
      '        <tr><td>'
      '          <label><p>'#26412#25991'<span>'#24517#38920'</span><br></p>'
      
        '            <textarea style="font-size:1.75em" name="comment" co' +
        'ls=30'
      
        '                      required placeholder="'#12467#12513#12531#12488#12394#12393#12434#20837#21147#12375#12390#12367#12384#12373#12356'."><#' +
        'cookie param=comment></textarea></label>'
      '        </td></tr>'
      '        <tr><td>'
      
        '          <label><p>'#12497#12473#12527#12540#12489'</p><input name="password" type="passwo' +
        'rd" placeholder="'#21066#38500#29992'">'
      
        '          </label> / <input type="checkbox" name="show" value="t' +
        'rue" checked><p>'#12503#12524#12499#12517#12540'</p>'
      '        </td></tr>'
      '        <tr><td>'
      
        '          <label><p>'#21512#35328#33865#12434#12402#12425#12364#12394#12391#20837#21147#12375#12390#12367#12384#12373#12356': genki <input name=aikotob' +
        'a type=text value=<#cookie param=aikotoba>></label>'
      '        </td></tr>'
      '      </table>'
      '    </form>'
      '    </header>'
      '    <hr size="1" width="100%">'
      
        '    <form action=/userdel?db=<#database> method="post" id=search' +
        '>'
      '      <label><p>'#35352#20107'No</p><input name="number"></label>'
      
        '      <label><p>Pass</p><input type="password" name="password"><' +
        '/label>'
      '      <input type="submit" value="'#21066#38500'">'
      '    </form>'
      '    <form action=/userdel?db=<#database> method=post id=search>'
      '      <label><p>'#35352#20107'No</p><input name=number></label>'
      '      <input type=submit value='#31227#21205'>'
      '    </form>'
      '    <p><a href=/search?db=<#database>>'#26908#32034#12506#12540#12472'</a></p>'
      '    <p style=text-align:right><a href=#article>'#19979#12408#31227#21205'</a></p>'
      '    <p style=text-align:center><#database></p>'
      '    <#header>'
      '  <#article>'
      #9'<a name=article></a>'
      #9'<p style=text-align:right><a href=#top>Top'#12408#31227#21205'</a></p>'
      '  <#footer>'
      
        '    <p style=text-align:center><a href="/admin?db=<#database>&nu' +
        'm=0">'#31649#29702#32773#29992#12525#12464#12452#12531'</a></p>'
      '  </body>'
      '</html>')
    DataSet = DataModule1.FDTable1
    OnHTMLTag = indexHTMLTag
    Left = 112
    Top = 32
  end
  object admin: TDataSetTableProducer
    Columns = <
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
        FieldName = 'COMMENT'
      end
      item
        FieldName = 'DATE'
      end>
    Footer.Strings = (
      '<a href=/index style=text-align:center>'#25147#12427'</a>')
    Header.Strings = (
      '')
    DataSet = DataModule1.FDTable2
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
      '  </head>'
      ''
      '  <body>'
      '    <form action="/search" method="post">'
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
    Top = 88
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
      '<html class="no-js" lang="ja">'
      '<head>'
      
        #9'<meta charset="utf-8" name="google-site-verification"  content=' +
        '"5KOTJTKv1HgTtIt0zVGzuyAkADCwXRme-RiiKJ03l3s" />'
      #9'<meta http-equiv="X-UA-Compatible" content="IE=edge">'
      #9'<title>Top Page'
      '</title>'
      #9'<link rel="stylesheet" href="{{static_url(css/top.css">'
      #9'<link rel="stylesheet" href="{{static_url(css/normalize.css">'
      #9'<script src="{{static_url(js/jquery-1.10.2.min.js"></script>'
      #9'<script src="{{static_url(js/top.js"></script>'
      #9'<script src="{{static_url(js/modernizr.custom.min.js"></script>'
      
        #9'<script src="{{static_url(js/jquery-ui-1.10.3.custom.min.js"></' +
        'script>'
      '</head>'
      '<body>'
      '<div id="fb-root"></div>'
      '<script>(function(d, s, id) {'
      '  var js, fjs = d.getElementsByTagName(s)[0];'
      '  if (d.getElementById(id)) return;'
      '  js = d.createElement(s); js.id = id;'
      
        '  js.src = "//connect.facebook.net/ja_JP/sdk.js#xfbml=1&version=' +
        'v2.8";'
      '  fjs.parentNode.insertBefore(js, fjs);'
      '}(document, '#39'script'#39', '#39'facebook-jssdk'#39'));</script>'
      '<header><h1 style="text-align: center;">'#28961#26009#38651#23376#25522#31034#26495#12408#12424#12358#12371#12381
      '</h1></header><div class="slideshow">'
      #9'<div class="slideshow-slides"><div class="slide">'
      #9'<img src=>'
      '<#list>'
      '</div>'
      '</div>'
      '</div>'
      #9'<div class="slideshow-nav">'
      #9'<a href="#" class="prev">prev'
      '</a>'
      #9'<a href="#" class="next">next'
      '</a>'
      #9'</div>'
      #9'<div class="slideshow-indicator"></div>'
      
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
      ''
      '<p><#request>'
      '</body></html>')
    OnHTMLTag = masterHTMLTag
    Left = 56
    Top = 144
  end
  object alert: TDataSetPageProducer
    HTMLDoc.Strings = (
      '<p>[ <#dbname>-<#posnum> ]<#date>'
      '<p><#comment>')
    DataSet = DataModule1.FDTable2
    Left = 56
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
end
