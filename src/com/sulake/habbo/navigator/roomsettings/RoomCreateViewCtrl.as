package com.sulake.habbo.navigator.roomsettings
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CreateFlatMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.TextFieldManager;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.domain.RoomLayout;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class RoomCreateViewCtrl
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_157:IWindowContainer;
      
      private var var_55:IItemListWindow;
      
      private var var_1052:TextFieldManager;
      
      private var var_36:Array;
      
      private var var_1053:RoomLayout;
      
      private var var_576:Timer;
      
      private var var_1638:Boolean = true;
      
      public function RoomCreateViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_576 = new Timer(100);
         this.var_576.addEventListener(TimerEvent.TIMER,this.updateArrowPos);
         this.var_36 = new Array();
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,104,"a"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,94,"b"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,36,"c"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,84,"d"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,80,"e"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,80,"f"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,416,"i"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,320,"j"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,448,"k"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,352,"l"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,384,"m"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_49,372,"n"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_60,80,"g"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_60,74,"h"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_60,416,"o"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_60,352,"p"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_60,304,"q"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_60,336,"r"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_60,748,"u"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_60,438,"v"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_53,540,"t"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_53,512,"w"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_53,396,"x"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_53,440,"y"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_53,456,"z"));
         this.var_36.push(new RoomLayout(HabboClubLevelEnum.const_53,208,"0"));
      }
      
      public function dispose() : void
      {
         if(this.var_576)
         {
            this.var_576.removeEventListener(TimerEvent.TIMER,this.updateArrowPos);
            this.var_576.reset();
            this.var_576 = null;
         }
      }
      
      private function updateArrowPos(param1:Event) : void
      {
         var _loc3_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_1053.view.findChildByName("select_arrow"));
         var _loc6_:int = Math.abs(_loc3_.y - 0) < 2 || Math.abs(_loc3_.y - 15) < 2 ? 1 : 2;
         _loc3_.y += !!this.var_1638 ? _loc6_ : -_loc6_;
         if(_loc3_.y < 0)
         {
            this.var_1638 = true;
            _loc3_.y = 1;
         }
         else if(_loc3_.y > 15)
         {
            this.var_1638 = false;
            _loc3_.y = 14;
         }
      }
      
      public function show() : void
      {
         this.prepare();
         this.var_157.visible = true;
         this.refresh();
         this.var_157.activate();
         this.var_576.start();
      }
      
      private function prepare() : void
      {
         if(this.var_157 != null)
         {
            return;
         }
         this.var_157 = IWindowContainer(this._navigator.getXmlWindow("roc_create_room"));
         this.var_55 = IItemListWindow(this.var_157.findChildByName("item_list"));
         this.refreshRoomThumbnails();
         Util.setProcDirectly(this.getCreateButton(),this.onCreateButtonClick);
         Util.setProcDirectly(this.getCancelButton(),this.onCancelButtonClick);
         var _loc1_:IWindow = this.var_157.findChildByTag("close");
         _loc1_.procedure = this.onCancelButtonClick;
         this.var_1052 = new TextFieldManager(this._navigator,ITextFieldWindow(this.var_157.findChildByName("room_name_input")),25,null,this._navigator.getText("navigator.createroom.roomnameinfo"));
         var _loc2_:Rectangle = Util.getLocationRelativeTo(this.var_157.desktop,this.var_157.width,this.var_157.height);
         this.var_157.x = _loc2_.x;
         this.var_157.y = _loc2_.y;
      }
      
      public function refresh() : void
      {
         this.var_1052.goBackToInitialState();
         this.var_1052.input.textBackgroundColor = 4294967295;
         this.var_1053 = this.var_36[0];
         this.refreshRoomThumbnails();
         this.refreshSelection();
      }
      
      private function refreshSelection() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = false;
         var _loc3_:* = null;
         for each(_loc1_ in this.var_36)
         {
            if(_loc1_.view != null)
            {
               _loc2_ = _loc1_ == this.var_1053;
               _loc1_.view.findChildByName("bg_sel").visible = _loc2_;
               _loc1_.view.findChildByName("bg_unsel").visible = !_loc2_;
               _loc3_ = ITextWindow(_loc1_.view.findChildByName("tile_size_txt"));
               _loc3_.textColor = !!_loc2_ ? 4294967295 : uint(4278190080);
               _loc3_.color = !!_loc2_ ? 4285432196 : uint(4291546059);
               this._navigator.refreshButton(_loc1_.view,"tile_icon_black",!_loc2_,null,0);
               this._navigator.refreshButton(_loc1_.view,"tile_icon_white",_loc2_,null,0);
               this._navigator.refreshButton(_loc1_.view,"select_arrow",_loc2_,null,0);
            }
         }
      }
      
      private function refreshRoomThumbnails() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         while(this.var_55.numListItems > 0)
         {
            _loc6_ = this.var_55.removeListItemAt(0);
            _loc6_.destroy();
         }
         for each(_loc1_ in this.var_36)
         {
            if(_loc1_.view != null)
            {
               _loc1_.view.destroy();
               _loc1_.view = null;
            }
         }
         _loc2_ = 0;
         _loc4_ = 0;
         while(_loc4_ < this.var_36.length)
         {
            _loc7_ = this.var_36[_loc4_];
            if(this.isAllowed(_loc7_))
            {
               if(_loc2_ == 0)
               {
                  _loc3_ = this.getRow();
                  this.var_55.addListItem(_loc3_);
               }
               this.addThumbnail(_loc3_,this.var_36[_loc4_],_loc2_ % 2 == 0);
               _loc2_ = _loc2_ == 0 ? 1 : 0;
            }
            _loc4_++;
         }
         this.refreshSelection();
         var _loc5_:* = "roc_hc_promo";
         if(this._navigator.sessionData.hasUserRight("fuse_use_special_room_layouts"))
         {
            if(this._navigator.sessionData.hasUserRight("fuse_use_vip_room_layouts"))
            {
               _loc5_ = null;
            }
            else
            {
               _loc5_ = "roc_vip_promo";
            }
         }
         if(_loc5_)
         {
            _loc8_ = IWindowContainer(this._navigator.getXmlWindow(_loc5_));
            if(_loc8_)
            {
               _loc8_.findChildByName("link").procedure = this.onHcMoreClick;
               this.var_55.addListItem(_loc8_);
            }
         }
      }
      
      private function addThumbnail(param1:IWindowContainer, param2:RoomLayout, param3:Boolean) : void
      {
         var _loc4_:IWindowContainer = IWindowContainer(this._navigator.getXmlWindow("roc_room_thumbnail"));
         _loc4_.tags.push(param2.name);
         if(!param3)
         {
            _loc4_.x = _loc4_.width;
         }
         var _loc5_:IWindowContainer = IWindowContainer(_loc4_.findChildByName("bg_pic"));
         var _loc6_:IBitmapWrapperWindow = this._navigator.getButton(param2.name,"model_" + param2.name,this.onPicClick,0,0,0);
         _loc5_.addChild(_loc6_);
         var _loc7_:Rectangle = Util.getLocationRelativeTo(_loc5_,_loc6_.width,_loc6_.height);
         _loc6_.x = _loc7_.x;
         _loc6_.y = _loc7_.y;
         Util.setProc(_loc4_,"bg_unsel",this.onChooseLayout);
         param1.addChild(_loc4_);
         param1.width = 2 * _loc4_.width;
         param1.height = _loc4_.height;
         param2.view = _loc4_;
         ITextWindow(param2.view.findChildByName("tile_size_txt")).text = param2.tileSize + " " + this._navigator.getText("navigator.createroom.tilesize");
         var _loc8_:IIconWindow = _loc4_.findChildByName("club_icon") as IIconWindow;
         if(_loc8_)
         {
            switch(param2.requiredClubLevel)
            {
               case HabboClubLevelEnum.const_60:
                  _loc8_.style = 11;
                  break;
               case HabboClubLevelEnum.const_53:
                  _loc8_.style = 12;
                  break;
               default:
                  _loc8_.visible = false;
            }
         }
      }
      
      private function isAllowed(param1:RoomLayout) : Boolean
      {
         switch(param1.requiredClubLevel)
         {
            case HabboClubLevelEnum.const_49:
               return true;
            case HabboClubLevelEnum.const_60:
               return this._navigator.sessionData.hasUserRight("fuse_use_special_room_layouts");
            case HabboClubLevelEnum.const_53:
               return this._navigator.sessionData.hasUserRight("fuse_use_vip_room_layouts");
            default:
               return false;
         }
      }
      
      private function getRow() : IWindowContainer
      {
         return IWindowContainer(this._navigator.windowManager.createWindow("","",HabboWindowType.const_56,HabboWindowStyle.const_34,HabboWindowParam.const_57,new Rectangle(0,0,100,300)));
      }
      
      private function isMandatoryFieldsFilled() : Boolean
      {
         var _loc1_:Boolean = this.var_1052.checkMandatory(this._navigator.getText("navigator.createroom.nameerr"));
         return Boolean(_loc1_);
      }
      
      private function getCreateButton() : IButtonWindow
      {
         return IButtonWindow(this.var_157.findChildByName("create_button"));
      }
      
      private function getCancelButton() : IButtonWindow
      {
         return IButtonWindow(this.var_157.findChildByName("back_button"));
      }
      
      private function onChooseLayout(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            _loc3_ = this.getLayout(param2);
            if(this.isAllowed(_loc3_))
            {
               this.var_1053 = _loc3_;
               this.refreshSelection();
            }
         }
      }
      
      private function getLayout(param1:IWindow) : RoomLayout
      {
         var _loc2_:IWindowContainer = IWindowContainer(param1.parent);
         return this.findLayout(_loc2_.tags[0]);
      }
      
      private function findLayout(param1:String) : RoomLayout
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_36)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.var_36[0];
      }
      
      private function onPicClick(param1:WindowEvent, param2:IWindow) : void
      {
         this.onChooseLayout(param1,param2.parent);
      }
      
      private function onCancelButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.close();
      }
      
      private function onHcMoreClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.openCatalogClubPage();
      }
      
      private function onCreateButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:String = this.var_1052.getText();
         var _loc4_:String = "model_" + this.var_1053.name;
         if(!this.isMandatoryFieldsFilled())
         {
            return;
         }
         this._navigator.send(new CreateFlatMessageComposer(_loc3_,_loc4_));
         this.var_157.visible = false;
      }
      
      private function close() : void
      {
         this.var_157.visible = false;
         this.var_576.reset();
      }
   }
}