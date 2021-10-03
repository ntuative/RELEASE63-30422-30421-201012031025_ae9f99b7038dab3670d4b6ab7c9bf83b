package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_2639:int;
      
      private var var_342:RoomEventViewCtrl;
      
      private var var_250:Timer;
      
      private var var_169:RoomSettingsCtrl;
      
      private var var_249:RoomThumbnailCtrl;
      
      private var var_1029:TagRenderer;
      
      private var var_285:IWindowContainer;
      
      private var var_495:IWindowContainer;
      
      private var var_742:IWindowContainer;
      
      private var var_2539:IWindowContainer;
      
      private var var_2538:IWindowContainer;
      
      private var var_1383:IWindowContainer;
      
      private var var_841:ITextWindow;
      
      private var var_1136:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_904:ITextWindow;
      
      private var var_1382:ITextWindow;
      
      private var var_1135:ITextWindow;
      
      private var var_906:ITextWindow;
      
      private var var_1817:ITextWindow;
      
      private var var_248:IWindowContainer;
      
      private var var_907:IWindowContainer;
      
      private var var_1818:IWindowContainer;
      
      private var var_2298:ITextWindow;
      
      private var var_743:ITextWindow;
      
      private var _rateButton:IContainerButtonWindow;
      
      private var var_1384:IContainerButtonWindow;
      
      private var var_1387:IContainerButtonWindow;
      
      private var var_1386:IContainerButtonWindow;
      
      private var var_1381:IContainerButtonWindow;
      
      private var var_1385:IContainerButtonWindow;
      
      private var var_1816:IButtonWindow;
      
      private var var_1815:IButtonWindow;
      
      private var var_1814:IButtonWindow;
      
      private var var_908:IWindowContainer;
      
      private var var_1388:ITextWindow;
      
      private var var_1134:ITextFieldWindow;
      
      private var var_63:IWindowContainer;
      
      private var var_1137:IButtonWindow;
      
      private var var_905:IButtonWindow;
      
      private var var_2536:String;
      
      private var var_2537:String;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_342 = new RoomEventViewCtrl(this._navigator);
         this.var_169 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_249 = new RoomThumbnailCtrl(this._navigator);
         this.var_1029 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_169);
         this.var_250 = new Timer(6000,1);
         this.var_250.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_95,this.onToolbarIconState);
         }
         if(this.var_250)
         {
            this.var_250.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_250.reset();
            this.var_250 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_250.reset();
         this.var_342.active = true;
         this.var_169.active = false;
         this.var_249.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_250.reset();
         this.var_169.load(param1);
         this.var_169.active = true;
         this.var_342.active = false;
         this.var_249.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_169.active = true;
         this.var_342.active = false;
         this.var_249.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_250.reset();
         this.var_169.active = false;
         this.var_342.active = false;
         this.var_249.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_900,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_250.reset();
         this.var_342.active = false;
         this.var_169.active = false;
         this.var_249.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_250.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_250.reset();
         this.var_342.active = false;
         this.var_169.active = false;
         this.var_249.active = false;
         this.refresh();
         if(!this._window.visible)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            this._window.parent.activate();
         }
         else
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_483,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
         this._window.height = Util.getLowestPoint(this._window);
         this._window.y = this._window.desktop.height - this._window.height - 5;
         Logger.log("MAIN: " + this.var_285.rectangle + ", " + this.var_248.rectangle + ", " + this._window.rectangle);
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_285);
         this.var_285.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_169.refresh(this.var_285);
         this.var_249.refresh(this.var_285);
         Util.moveChildrenToColumn(this.var_285,["room_details","room_buttons"],0,2);
         this.var_285.height = Util.getLowestPoint(this.var_285);
         this.var_285.visible = true;
         Logger.log("XORP: " + this.var_495.visible + ", " + this.var_1383.visible + ", " + this.var_742.visible + ", " + this.var_742.rectangle + ", " + this.var_285.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_248);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_342.refresh(this.var_248);
         if(Util.hasVisibleChildren(this.var_248) && !(this.var_169.active || this.var_249.active))
         {
            Util.moveChildrenToColumn(this.var_248,["event_details","event_buttons"],0,2);
            this.var_248.height = Util.getLowestPoint(this.var_248);
            this.var_248.visible = true;
         }
         else
         {
            this.var_248.visible = false;
         }
         Logger.log("EVENT: " + this.var_248.visible + ", " + this.var_248.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_169.active && !this.var_249.active && !this.var_342.active)
         {
            this.var_908.visible = true;
            this.var_1134.text = this.getEmbedData();
         }
         else
         {
            this.var_908.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this.var_63)
         {
            return;
         }
         if(this.var_169.active)
         {
            this.var_63.visible = false;
            return;
         }
         this.var_63.visible = true;
         if(this.var_1137)
         {
            if(this.var_2536 == "exit_homeroom")
            {
               this.var_1137.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_1137.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_905)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_905.visible = _loc1_;
            if(this.var_2537 == "0")
            {
               this.var_905.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_905.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_169.active || this.var_249.active)
         {
            return;
         }
         this.var_841.text = param1.roomName;
         this.var_841.height = this.var_841.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_904.text = param1.description;
         this.var_1029.refreshTags(this.var_495,param1.tags);
         this.var_904.visible = false;
         if(param1.description != "")
         {
            this.var_904.height = this.var_904.textHeight + 5;
            this.var_904.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1384,"facebook_logo_small",_loc3_,null,0);
         this.var_1384.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this._rateButton,"thumb_up",_loc4_,null,0);
         this._rateButton.visible = _loc4_;
         this.var_906.visible = !_loc4_;
         this.var_1817.visible = !_loc4_;
         this.var_1817.text = "" + this._navigator.data.currentRoomRating;
         this._navigator.refreshButton(this.var_495,"home",param2,null,0);
         this._navigator.refreshButton(this.var_495,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_495,["room_name","owner_name_cont","tags","room_desc","rating_cont"],this.var_841.y,0);
         this.var_495.visible = true;
         this.var_495.height = Util.getLowestPoint(this.var_495);
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_169.active || this.var_249.active)
         {
            return;
         }
         this.var_1136.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1136.height = this.var_1136.textHeight + 5;
         this.var_1382.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1382.height = this.var_1382.textHeight + 5;
         Util.moveChildrenToColumn(this.var_742,["public_space_name","public_space_desc"],this.var_1136.y,0);
         this.var_742.visible = true;
         this.var_742.height = Math.max(86,Util.getLowestPoint(this.var_742));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_342.active)
         {
            return;
         }
         this.var_2298.text = param1.eventName;
         this.var_743.text = param1.eventDescription;
         this.var_1029.refreshTags(this.var_907,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_743.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_743.height = this.var_743.textHeight + 5;
            this.var_743.y = Util.getLowestPoint(this.var_907) + 2;
            this.var_743.visible = true;
         }
         this.var_907.visible = true;
         this.var_907.height = Util.getLowestPoint(this.var_907);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_169.active || this.var_249.active)
         {
            return;
         }
         this.var_1816.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1387.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1386.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1381.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1385.visible = this._navigator.data.canEditRoomSettings && param1;
         this.var_1383.visible = Util.hasVisibleChildren(this.var_1383);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_342.active)
         {
            return;
         }
         this.var_1815.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1814.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1818.visible = Util.hasVisibleChildren(this.var_1818);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
         this._window.setParamFlag(HabboWindowParam.const_57,false);
         this._window.setParamFlag(HabboWindowParam.const_1390,true);
         this._window.visible = false;
         this.var_285 = IWindowContainer(this.find("room_info"));
         this.var_495 = IWindowContainer(this.find("room_details"));
         this.var_742 = IWindowContainer(this.find("public_space_details"));
         this.var_2539 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2538 = IWindowContainer(this.find("rating_cont"));
         this.var_1383 = IWindowContainer(this.find("room_buttons"));
         this.var_841 = ITextWindow(this.find("room_name"));
         this.var_1136 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_904 = ITextWindow(this.find("room_desc"));
         this.var_1382 = ITextWindow(this.find("public_space_desc"));
         this.var_1135 = ITextWindow(this.find("owner_caption"));
         this.var_906 = ITextWindow(this.find("rating_caption"));
         this.var_1817 = ITextWindow(this.find("rating_txt"));
         this.var_248 = IWindowContainer(this.find("event_info"));
         this.var_907 = IWindowContainer(this.find("event_details"));
         this.var_1818 = IWindowContainer(this.find("event_buttons"));
         this.var_2298 = ITextWindow(this.find("event_name"));
         this.var_743 = ITextWindow(this.find("event_desc"));
         this.var_1384 = IContainerButtonWindow(this.find("facebook_like_button"));
         this._rateButton = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1387 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1386 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1381 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1385 = IContainerButtonWindow(this.find("unmake_home_button"));
         this.var_1816 = IButtonWindow(this.find("room_settings_button"));
         this.var_1815 = IButtonWindow(this.find("create_event_button"));
         this.var_1814 = IButtonWindow(this.find("edit_event_button"));
         this.var_908 = IWindowContainer(this.find("embed_info"));
         this.var_1388 = ITextWindow(this.find("embed_info_txt"));
         this.var_1134 = ITextFieldWindow(this.find("embed_src_txt"));
         this.var_63 = IWindowContainer(this.find("buttons_container"));
         this.var_1137 = IButtonWindow(this.find("exit_room_button"));
         this.var_905 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1387,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1386,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1816,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1381,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1385,this.onUnmakeHomeClick);
         Util.setProcDirectly(this.var_1815,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1814,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1134,this.onEmbedSrcClick);
         Util.setProcDirectly(this._rateButton,this.onThumbUp);
         Util.setProcDirectly(this.var_1384,this.onFacebookLike);
         Util.setProcDirectly(this.var_905,this.onZoomClick);
         Util.setProcDirectly(this.var_1137,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1387,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1386,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1381,"home",true,null,0);
         this._navigator.refreshButton(this.var_1385,"home",true,null,0);
         this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_285,this.onHover);
         Util.setProcDirectly(this.var_248,this.onHover);
         this.var_1135.width = this.var_1135.textWidth;
         Util.moveChildrenToRow(this.var_2539,["owner_caption","owner_name"],this.var_1135.x,this.var_1135.y,3);
         this.var_906.width = this.var_906.textWidth;
         Util.moveChildrenToRow(this.var_2538,["rating_caption","rating_txt"],this.var_906.x,this.var_906.y,3);
         this.var_1388.height = this.var_1388.textHeight + 5;
         Util.moveChildrenToColumn(this.var_908,["embed_info_txt","embed_src_txt"],this.var_1388.y,2);
         this.var_908.height = Util.getLowestPoint(this.var_908) + 5;
         this.var_2639 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1134.setSelection(0,this.var_1134.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_38);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_38);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_95)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2537 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2536 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_250.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_483,HabboToolbarIconEnum.ROOMINFO,this._window,false));
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_95,this.onToolbarIconState);
         }
      }
   }
}
