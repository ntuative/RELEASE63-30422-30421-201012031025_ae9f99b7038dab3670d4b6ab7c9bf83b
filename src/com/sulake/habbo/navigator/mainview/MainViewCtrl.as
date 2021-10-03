package com.sulake.habbo.navigator.mainview
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ISelectableWindow;
   import com.sulake.core.window.components.ITabButtonWindow;
   import com.sulake.core.window.components.ITabContextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.navigator.GetOfficialRoomsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.GetPopularRoomTagsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.LatestEventsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyFavouriteRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyFriendsRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyRoomHistorySearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.PopularRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomTagSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomTextSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomsWhereMyFriendsAreSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomsWithHighestScoreSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.room.session.QuitMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.IViewCtrl;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.domain.Tab;
   import com.sulake.habbo.navigator.domain.Tabs;
   import com.sulake.habbo.navigator.events.HabboNavigatorTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class MainViewCtrl implements IUpdateReceiver, IDisposable
   {
      
      public static const const_520:int = 1;
      
      public static const const_731:int = 2;
      
      public static const const_1665:int = 3;
      
      public static const const_957:int = 4;
      
      private static const const_834:int = 1;
      
      private static const const_547:int = 2;
      
      private static const const_833:int = 3;
      
      private static const const_1153:int = 4;
      
      private static const SCROLLBAR_WIDTH:int = 22;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_17:IFrameWindow;
      
      private var var_157:IWindowContainer;
      
      private var var_195:IWindowContainer;
      
      private var var_225:IWindowContainer;
      
      private var var_179:IWindowContainer;
      
      private var var_801:PopularTagsListCtrl;
      
      private var var_802:GuestRoomListCtrl;
      
      private var var_995:OfficialRoomListCtrl;
      
      private var var_237:ITabContextWindow;
      
      private var var_1537:Boolean;
      
      private var var_554:int;
      
      private var var_994:Boolean = true;
      
      private var var_1231:int = 0;
      
      private var var_1230:IWindow;
      
      private var var_996:IRegionWindow;
      
      private var var_2126:int = 0;
      
      private var var_426:Timer;
      
      private var _disposed:Boolean = false;
      
      public function MainViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_801 = new PopularTagsListCtrl(this._navigator);
         this.var_802 = new GuestRoomListCtrl(this._navigator);
         this.var_995 = new OfficialRoomListCtrl(this._navigator);
         this.var_426 = new Timer(300,1);
         this.var_426.addEventListener(TimerEvent.TIMER,this.onResizeTimer);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function onNavigatorToolBarIconClick() : Boolean
      {
         if(this.isOpen())
         {
            this.close();
            return false;
         }
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.navigatorOpenedWhileInTab();
         return true;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this._navigator = null;
            if(this.var_17)
            {
               this.var_17.dispose();
               this.var_17 = null;
            }
            if(this.var_157)
            {
               this.var_157.dispose();
               this.var_157 = null;
            }
            if(this.var_426)
            {
               this.var_426.removeEventListener(TimerEvent.TIMER,this.onResizeTimer);
               this.var_426.reset();
               this.var_426 = null;
            }
            if(this.var_801)
            {
               this.var_801.dispose();
               this.var_801 = null;
            }
            if(this.var_802)
            {
               this.var_802.dispose();
               this.var_802 = null;
            }
            if(this.var_995)
            {
               this.var_995.dispose();
               this.var_995 = null;
            }
         }
      }
      
      public function open() : void
      {
         var _loc1_:Boolean = false;
         if(this.var_17 == null)
         {
            this.prepare();
            _loc1_ = true;
         }
         this.refresh();
         this.var_17.visible = true;
         this.var_17.activate();
         if(_loc1_)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.NAVIGATOR,this.var_17));
         }
      }
      
      public function isOpen() : Boolean
      {
         return this.var_17 != null && this.var_17.visible;
      }
      
      public function close() : void
      {
         if(this.var_17 != null)
         {
            this.var_17.visible = false;
         }
      }
      
      public function get mainWindow() : IFrameWindow
      {
         return this.var_17;
      }
      
      private function prepare() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!this._navigator)
         {
            ErrorReportStorage.addDebugData("MainViewCtrl","prepare: _navigator is null!");
         }
         this.var_17 = IFrameWindow(this._navigator.getXmlWindow("grs_main_window"));
         if(!this.var_17)
         {
            ErrorReportStorage.addDebugData("MainViewCtrl","prepare: _mainWindow is null!");
         }
         this.var_237 = ITabContextWindow(this.var_17.findChildByName("tab_context"));
         if(!this.var_237)
         {
            ErrorReportStorage.addDebugData("MainViewCtrl","prepare: _tabContext is null!");
         }
         this.var_157 = IWindowContainer(this.var_17.findChildByName("tab_content"));
         this.var_195 = IWindowContainer(this.var_17.findChildByName("custom_content"));
         this.var_179 = IWindowContainer(this.var_17.findChildByName("list_content"));
         this.var_225 = IWindowContainer(this.var_17.findChildByName("custom_footer"));
         this.var_1230 = this.var_17.findChildByName("loading_text");
         var _loc1_:IWindow = this.var_17.findChildByTag("close");
         _loc1_.procedure = this.onWindowClose;
         this.var_996 = IRegionWindow(this.var_17.findChildByName("to_hotel_view"));
         if(!this.var_996)
         {
            ErrorReportStorage.addDebugData("MainViewCtrl","prepare: _toHotelView is null!");
         }
         this.var_996.procedure = this.onHotelView;
         this.refreshToHotelViewButton(false);
         this.var_17.procedure = this.onWindow;
         for each(_loc2_ in this._navigator.tabs.tabs)
         {
            _loc3_ = this.var_237.getTabItemByID(_loc2_.id);
            if(!_loc3_)
            {
               ErrorReportStorage.addDebugData("MainViewCtrl","prepare: but is null!");
            }
            _loc3_.setParamFlag(HabboWindowParam.const_36,true);
            _loc3_.procedure = this.onTabClick;
            _loc2_.button = _loc3_;
         }
         this.var_17.scaler.setParamFlag(HabboWindowParam.const_689,false);
         this.var_17.scaler.setParamFlag(HabboWindowParam.const_1381,true);
      }
      
      public function refresh() : void
      {
         if(this.var_17 == null)
         {
            return;
         }
         this.refreshTab();
         this.refreshCustomContent();
         this.refreshListContent(true);
         this.refreshFooter();
         this.var_195.height = Util.getLowestPoint(this.var_195);
         this.var_225.height = Util.getLowestPoint(this.var_225);
         var _loc1_:int = this.var_179.y;
         Util.moveChildrenToColumn(this.var_157,["custom_content","list_content"],this.var_195.y,8);
         this.var_179.height = this.var_179.height + _loc1_ - this.var_179.y - this.var_225.height + this.var_2126;
         Util.moveChildrenToColumn(this.var_157,["list_content","custom_footer"],this.var_179.y,0);
         this.var_2126 = this.var_225.height;
         this.onResizeTimer(null);
      }
      
      private function refreshTab() : void
      {
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         var _loc2_:ISelectableWindow = this.var_237.selector.getSelected();
         if(_loc1_.button != _loc2_)
         {
            this.var_1537 = true;
            this.var_237.selector.setSelected(_loc1_.button);
         }
      }
      
      private function refreshCustomContent() : void
      {
         Util.hideChildren(this.var_195);
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.refreshCustomContent(this.var_195);
         if(Util.hasVisibleChildren(this.var_195))
         {
            this.var_195.visible = true;
         }
         else
         {
            this.var_195.visible = false;
            this.var_195.blend = 1;
         }
      }
      
      private function refreshFooter() : void
      {
         Util.hideChildren(this.var_225);
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.refreshFooter(this.var_225);
         if(Util.hasVisibleChildren(this.var_225))
         {
            this.var_225.visible = true;
         }
         else
         {
            this.var_225.visible = false;
         }
      }
      
      private function refreshListContent(param1:Boolean) : void
      {
         Util.hideChildren(this.var_179);
         this.refreshGuestRooms(param1,this._navigator.data.guestRoomSearchArrived);
         this.refreshPopularTags(param1,this._navigator.data.popularTagsArrived);
         this.refreshOfficialRooms(param1,this._navigator.data.officialRoomsArrived);
      }
      
      private function refreshGuestRooms(param1:Boolean, param2:Boolean) : void
      {
         this.refreshList(param1,param2,this.var_802,"guest_rooms");
      }
      
      private function refreshPopularTags(param1:Boolean, param2:Boolean) : void
      {
         this.refreshList(param1,param2,this.var_801,"popular_tags");
      }
      
      private function refreshOfficialRooms(param1:Boolean, param2:Boolean) : void
      {
         this.refreshList(param1,param2,this.var_995,"official_rooms");
      }
      
      private function refreshList(param1:Boolean, param2:Boolean, param3:IViewCtrl, param4:String) : void
      {
         var _loc5_:* = null;
         if(!param2)
         {
            return;
         }
         if(param3.content == null)
         {
            _loc5_ = this.var_179.getChildByName(param4);
            param3.content = IWindowContainer(_loc5_);
         }
         if(param1)
         {
            param3.refresh();
         }
         param3.content.visible = true;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         this.close();
      }
      
      private function onTabClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_58)
         {
            return;
         }
         var _loc3_:int = param2.id;
         if(this.var_1537)
         {
            this.var_1537 = false;
            return;
         }
         var _loc4_:Tab = this._navigator.tabs.getTab(_loc3_);
         _loc4_.sendSearchRequest();
         switch(_loc4_.id)
         {
            case Tabs.const_346:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_EVENTS));
               break;
            case Tabs.const_271:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ME));
               break;
            case Tabs.const_336:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_OFFICIAL));
               break;
            case Tabs.const_256:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ROOMS));
               break;
            case Tabs.const_221:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCH));
         }
      }
      
      public function reloadRoomList(param1:int) : Boolean
      {
         ErrorReportStorage.addDebugData("MainViewCtrl","Reloading RoomList");
         if(this.isOpen() && this._navigator.data.guestRoomSearchResults != null && this._navigator.data.guestRoomSearchResults.searchType == param1)
         {
            this.startSearch(this._navigator.tabs.getSelected().id,param1,"");
            return true;
         }
         return false;
      }
      
      public function startSearch(param1:int, param2:int, param3:String = "-1", param4:int = 1) : void
      {
         var _loc5_:Tab = this._navigator.tabs.getSelected();
         this._navigator.tabs.setSelectedTab(param1);
         var _loc6_:Tab = this._navigator.tabs.getSelected();
         ErrorReportStorage.addDebugData("StartSearch","Start search " + _loc5_.id + " => " + _loc6_.id);
         this.var_994 = _loc5_ != _loc6_;
         if(_loc5_ != _loc6_)
         {
            _loc6_.tabPageDecorator.tabSelected();
         }
         this._navigator.data.startLoading();
         if(param4 == const_520)
         {
            this._navigator.send(this.getSearchMsg(param2,param3));
         }
         else if(param4 == const_731)
         {
            this._navigator.send(new GetPopularRoomTagsMessageComposer());
         }
         else
         {
            this._navigator.send(new GetOfficialRoomsMessageComposer());
         }
         if(!this.isOpen())
         {
            this.open();
            this.var_554 = const_547;
            this.var_179.blend = 0;
            if(this.var_195.visible)
            {
               this.var_195.blend = 0;
               this.var_225.blend = 0;
            }
         }
         else
         {
            this.var_554 = const_834;
         }
         this.var_1231 = 0;
         this._navigator.registerUpdateReceiver(this,2);
         this.sendTrackingEvent(param2);
      }
      
      private function sendTrackingEvent(param1:int) : void
      {
         switch(param1)
         {
            case Tabs.const_490:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_LATEST_EVENTS));
               break;
            case Tabs.const_675:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FAVOURITES));
               break;
            case Tabs.const_751:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FRIENDS_ROOMS));
               break;
            case Tabs.const_765:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_HISTORY));
               break;
            case Tabs.const_228:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_ROOMS));
               break;
            case Tabs.const_671:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_OFFICIALROOMS));
               break;
            case Tabs.const_345:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_POPULAR_ROOMS));
               break;
            case Tabs.const_774:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WHERE_MY_FRIENDS_ARE));
               break;
            case Tabs.const_764:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WITH_HIGHEST_SCORE));
               break;
            case Tabs.const_334:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TAG_SEARCH));
               break;
            case Tabs.const_253:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TEXT_SEARCH));
         }
      }
      
      private function getSearchMsg(param1:int, param2:String) : IMessageComposer
      {
         if(param1 == Tabs.const_675)
         {
            return new MyFavouriteRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_751)
         {
            return new MyFriendsRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_765)
         {
            return new MyRoomHistorySearchMessageComposer();
         }
         if(param1 == Tabs.const_228)
         {
            return new MyRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_345)
         {
            return new PopularRoomsSearchMessageComposer(param2,this._navigator.data.adIndex);
         }
         if(param1 == Tabs.const_774)
         {
            return new RoomsWhereMyFriendsAreSearchMessageComposer();
         }
         if(param1 == Tabs.const_764)
         {
            return new RoomsWithHighestScoreSearchMessageComposer(this._navigator.data.adIndex);
         }
         if(param1 == Tabs.const_334)
         {
            return new RoomTagSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_253)
         {
            return new RoomTextSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_490)
         {
            return new LatestEventsSearchMessageComposer(param2,this._navigator.data.adIndex);
         }
         Logger.log("No message for searchType: " + param1);
         return null;
      }
      
      public function update(param1:uint) : void
      {
         var _loc3_:Number = NaN;
         if(this.var_179 == null)
         {
            return;
         }
         var _loc2_:Number = param1 / 150;
         if(this.var_554 == const_834)
         {
            _loc3_ = Math.min(1,Math.max(0,this.var_179.blend - _loc2_));
            this.var_179.blend = _loc3_;
            this.var_195.blend = !!this.var_994 ? Number(_loc3_) : Number(1);
            this.var_225.blend = !!this.var_994 ? Number(_loc3_) : Number(1);
            if(_loc3_ == 0)
            {
               this.var_554 = const_547;
            }
         }
         else if(this.var_554 == const_547)
         {
            if(this.var_1231 % 10 == 1)
            {
               this.var_1230.visible = !this.var_1230.visible;
            }
            ++this.var_1231;
            if(!this._navigator.data.isLoading())
            {
               this.var_554 = const_833;
            }
         }
         else if(this.var_554 == const_833)
         {
            this.refresh();
            this.var_554 = const_1153;
         }
         else
         {
            this.var_1230.visible = false;
            _loc3_ = Math.min(1,Math.max(0,this.var_179.blend + _loc2_));
            this.var_179.blend = _loc3_;
            this.var_195.blend = !!this.var_994 ? Number(_loc3_) : Number(1);
            this.var_225.blend = !!this.var_994 ? Number(_loc3_) : Number(1);
            if(this.var_179.blend >= 1)
            {
               this._navigator.removeUpdateReceiver(this);
            }
         }
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_44 || param2 != this.var_17)
         {
            return;
         }
         if(!this.var_426.running)
         {
            this.var_426.reset();
            this.var_426.start();
         }
      }
      
      private function onResizeTimer(param1:TimerEvent) : void
      {
         this.refreshScrollbar(this.var_801);
         this.refreshScrollbar(this.var_802);
      }
      
      private function refreshScrollbar(param1:IViewCtrl) : void
      {
         if(param1.content == null || !param1.content.visible)
         {
            return;
         }
         var _loc2_:IItemListWindow = IItemListWindow(param1.content.findChildByName("item_list"));
         var _loc3_:IWindow = param1.content.findChildByName("scroller");
         var _loc4_:* = _loc2_.scrollableRegion.height > _loc2_.height;
         if(_loc3_.visible)
         {
            if(_loc4_)
            {
               return;
            }
            _loc3_.visible = false;
            _loc2_.width += SCROLLBAR_WIDTH;
         }
         else
         {
            if(!_loc4_)
            {
               return;
            }
            _loc3_.visible = true;
            _loc2_.width -= SCROLLBAR_WIDTH;
         }
      }
      
      public function stretchNewEntryIfNeeded(param1:IViewCtrl, param2:IWindowContainer) : void
      {
         var _loc3_:IWindow = param1.content.findChildByName("scroller");
         if(_loc3_.visible)
         {
            return;
         }
         param2.width += SCROLLBAR_WIDTH;
      }
      
      private function refreshToHotelViewButton(param1:Boolean) : void
      {
         this._navigator.refreshButton(this.var_996,"icon_hotelview",!param1,null,0);
         this._navigator.refreshButton(this.var_996,"icon_hotelview_reactive",param1,null,0);
      }
      
      private function onHotelView(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            this.refreshToHotelViewButton(true);
         }
         else if(param1.type == WindowMouseEvent.const_25)
         {
            this.refreshToHotelViewButton(false);
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this._navigator.send(new QuitMessageComposer());
         }
      }
   }
}