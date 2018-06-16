
import NJMediator

fileprivate let kMediator_Target_NameSpace = "DYLiveShow"

fileprivate let kMediator_Target_LiveShow = "LiveShow"

fileprivate let kMediator_Action_NativeFetchLiveShowMainViewController = "mainViewControllerWithParams:"

extension NJMediator {
    //        (lldb) po #selector(nj_backBtnClick(btn:))
    //        nj_backBtnClickWithBtn:
    public func Mediator_DYLiveShow_MainController() -> UIViewController? {

        let result = self.perform(nameSpace: kMediator_Target_NameSpace, target: kMediator_Target_LiveShow, action: kMediator_Action_NativeFetchLiveShowMainViewController, params: nil, shouldCacheTarget: false)

        return result as? UIViewController
        
//        scheme://[nameSpace].[target]/[action]?[params]
//        let action = "mainViewControllerWithParams_"
//        let url = URL.init(string: "https://\(nameSpace).\(target)/\(action)?a=1&b=3&id=123456789")!
//        return self.perform(url: url, completion: { (dict) in
//            print(dict)
//        }) as? UIViewController
        
    }
}
