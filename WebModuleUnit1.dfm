object TWebModule1: TTWebModule1
  OldCreateOrder = False
  OnCreate = WebModuleCreate
  Actions = <
    item
      Name = 'top'
      PathInfo = '/'
      Producer = top
      OnAction = TWebModule1indexpageAction
    end
    item
      Default = True
      Name = 'indexpage'
      PathInfo = '/index'
      Producer = index
      OnAction = TWebModule1indexpageAction
    end
    item
      Name = 'regist'
      PathInfo = '/regist'
      OnAction = TWebModule1registAction
    end>
  Height = 596
  Width = 680
  object top: TPageProducer
    Left = 40
    Top = 32
  end
  object articles: TDataSetPageProducer
    HTMLDoc.Strings = (
      '                                            <hr size=1>'
      
        #9'<section id=number><a name=<#number>></a><a href=/{{link}}/user' +
        'del?job=<#number> style=text-decoration:none>'
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
    Left = 112
    Top = 88
  end
  object index: TDataSetPageProducer
    HTMLFile = 'C:\Users\yamat\Documents\GitHub\newbbs\index.htm'
    DataSet = DataModule1.FDTable1
    OnHTMLTag = indexHTMLTag
    Left = 112
    Top = 32
  end
end
