package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1400:String = "WN_CRETAE";
      
      public static const const_1434:String = "WN_CREATED";
      
      public static const const_969:String = "WN_DESTROY";
      
      public static const const_1031:String = "WN_DESTROYED";
      
      public static const const_1057:String = "WN_OPEN";
      
      public static const const_1046:String = "WN_OPENED";
      
      public static const const_1017:String = "WN_CLOSE";
      
      public static const const_890:String = "WN_CLOSED";
      
      public static const const_996:String = "WN_FOCUS";
      
      public static const const_1080:String = "WN_FOCUSED";
      
      public static const const_1061:String = "WN_UNFOCUS";
      
      public static const const_945:String = "WN_UNFOCUSED";
      
      public static const const_1024:String = "WN_ACTIVATE";
      
      public static const const_331:String = "WN_ACTVATED";
      
      public static const const_898:String = "WN_DEACTIVATE";
      
      public static const const_906:String = "WN_DEACTIVATED";
      
      public static const const_462:String = "WN_SELECT";
      
      public static const const_337:String = "WN_SELECTED";
      
      public static const const_684:String = "WN_UNSELECT";
      
      public static const const_630:String = "WN_UNSELECTED";
      
      public static const const_933:String = "WN_LOCK";
      
      public static const const_917:String = "WN_LOCKED";
      
      public static const const_1089:String = "WN_UNLOCK";
      
      public static const const_918:String = "WN_UNLOCKED";
      
      public static const const_1060:String = "WN_ENABLE";
      
      public static const const_667:String = "WN_ENABLED";
      
      public static const const_1034:String = "WN_DISABLE";
      
      public static const const_583:String = "WN_DISABLED";
      
      public static const const_596:String = "WN_RESIZE";
      
      public static const const_168:String = "WN_RESIZED";
      
      public static const const_1008:String = "WN_RELOCATE";
      
      public static const const_437:String = "WN_RELOCATED";
      
      public static const const_1018:String = "WN_MINIMIZE";
      
      public static const const_1065:String = "WN_MINIMIZED";
      
      public static const const_1005:String = "WN_MAXIMIZE";
      
      public static const const_1077:String = "WN_MAXIMIZED";
      
      public static const const_1082:String = "WN_RESTORE";
      
      public static const const_1039:String = "WN_RESTORED";
      
      public static const const_1595:String = "WN_ARRANGE";
      
      public static const const_1733:String = "WN_ARRANGED";
      
      public static const const_1764:String = "WN_UPDATE";
      
      public static const const_1581:String = "WN_UPDATED";
      
      public static const const_376:String = "WN_CHILD_ADDED";
      
      public static const const_772:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_270:String = "WN_CHILD_RELOCATED";
      
      public static const const_235:String = "WN_CHILD_ACTIVATED";
      
      public static const const_525:String = "WN_PARENT_ADDED";
      
      public static const const_976:String = "WN_PARENT_REMOVED";
      
      public static const const_396:String = "WN_PARENT_RESIZED";
      
      public static const const_1056:String = "WN_PARENT_RELOCATED";
      
      public static const const_755:String = "WN_PARENT_ACTIVATED";
      
      public static const const_460:String = "WN_STATE_UPDATED";
      
      public static const const_504:String = "WN_STYLE_UPDATED";
      
      public static const const_471:String = "WN_PARAM_UPDATED";
      
      public static const const_1676:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1875,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
