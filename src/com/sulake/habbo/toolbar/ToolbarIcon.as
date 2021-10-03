package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_456:ToolbarIconGroup;
      
      private var var_660:String;
      
      private var var_1240:String;
      
      private var var_2614:String;
      
      private var var_1092:Number;
      
      private var var_661:Array;
      
      private var var_1004:Array;
      
      private var _region:IRegionWindow;
      
      private var _icon:IBitmapWrapperWindow;
      
      private var var_305:ITextWindow;
      
      private var _events:IEventDispatcher;
      
      private var _bitmapData:BitmapData;
      
      private var var_1553:Array;
      
      private var var_1000:Array;
      
      private var var_1242:String = "-1";
      
      private var var_1002:String = "-1";
      
      private var var_264:ToolbarBarMenuAnimator;
      
      private var var_1001:ToolbarIconBouncer;
      
      private var var_558:ToolbarIconAnimator;
      
      private var var_1003:Boolean = false;
      
      private var _state:String = "-1";
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_808:Timer;
      
      private var var_1241:Timer;
      
      private var var_2149:int;
      
      private var var_2150:int;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         this.var_661 = new Array();
         this.var_1004 = new Array();
         this.var_1001 = new ToolbarIconBouncer(0.8,1);
         super();
         this.var_456 = param1;
         this._windowManager = param2;
         this._assetLibrary = param3;
         this.var_660 = param4;
         this._events = param5;
         this.var_264 = param6;
         this.var_1241 = new Timer(40,40);
         this.var_1241.addEventListener(TimerEvent.TIMER,this.updateBouncer);
         var _loc7_:XmlAsset = this._assetLibrary.getAssetByName("toolbar_icon_xml") as XmlAsset;
         this._region = param2.buildFromXML(_loc7_.content as XML) as IRegionWindow;
         this._region.procedure = this.onMouseEvent;
         this._region.visible = false;
         this._icon = this._region.findChildByName("icon") as IBitmapWrapperWindow;
         this._icon.addEventListener(WindowEvent.const_44,this.onWindowResized);
         this.var_305 = this._region.findChildByName("label") as ITextWindow;
      }
      
      public function dispose() : void
      {
         if(this._icon != null)
         {
            this._icon.dispose();
            this._icon = null;
         }
         if(this.var_305 != null)
         {
            this.var_305.dispose();
            this.var_305 = null;
         }
         if(this._region != null)
         {
            this._region.dispose();
            this._region = null;
         }
         this.var_661 = null;
         this.var_1004 = null;
         this.exists = false;
         this._windowManager = null;
         this._events = null;
         this.var_264 = null;
         this.var_558 = null;
         this._bitmapData = null;
      }
      
      public function get iconId() : String
      {
         return this.var_660;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return this.var_456;
      }
      
      public function set exists(param1:Boolean) : void
      {
         this.var_1003 = param1;
         if(this._region != null)
         {
            this._region.visible = this.var_1003;
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         this.var_1553 = new Array();
         this.var_1000 = new Array();
         this.var_1240 = param1.@id;
         this.var_2149 = int(param1.@window_offset_from_icon);
         this.var_2150 = int(param1.@window_margin);
         this.var_2614 = param1.@label;
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               this.var_1242 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               this.var_1002 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               this.var_1000.push(_loc5_.id);
               this.var_1553.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(this.var_1242 == "-1")
                  {
                     this.var_1242 = _loc5_.id;
                  }
                  if(this.var_1002 == "-1")
                  {
                     this.var_1002 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         this._state = this.var_1002;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         this.exists = true;
         this._bitmapData = param1;
         this.setLabel();
         this.setAnimator();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         this.setLabel();
         this.exists = param1;
         this.setAnimator();
      }
      
      private function setAnimator() : void
      {
         if(this.var_808 != null)
         {
            this.var_808.stop();
            this.var_808 = null;
         }
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && this.var_1003)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            this.var_558 = new ToolbarIconAnimator(_loc1_,this._assetLibrary,this._icon,this._x,this.var_171,this._bitmapData);
            if(this.var_558.frameCount > 0)
            {
               this.var_808 = new Timer(_loc1_.timer);
               this.var_808.addEventListener(TimerEvent.TIMER,this.updateAnimator);
               this.var_808.start();
            }
            if(_loc1_.bounce)
            {
               this.var_1001.reset(-7);
               this.var_1241.reset();
               this.var_1241.start();
            }
         }
         else
         {
            this.var_558 = null;
            this._icon.bitmap = null;
         }
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(this.var_661.indexOf(param1) < 0)
         {
            this.var_661.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            this.var_1004.push(_loc4_);
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return this.var_661.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!this.docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = this.var_1004[this.var_661.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(this.var_264 != null)
         {
            this.var_264.animateWindowIn(this,param1,param2,this.var_660,param3,param4,this.getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(this.var_264 != null)
         {
            this.var_264.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(this.var_264 != null)
         {
            this.var_264.positionWindow(this,param1,param2,this.var_660,param3,this.getMenuYieldList(param1));
         }
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(this.var_264 != null)
         {
            this.var_264.hideWindow(param1,param2,this.var_660,param3);
         }
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return this.getStateObject(this._state);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return this.var_1553[this.var_1000.indexOf(param1)];
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!this.docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = this.var_1004[this.var_661.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function changePosition(param1:Number) : void
      {
         this.var_1092 = param1;
         this.updateRegion();
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
         this.exists = true;
         this.setAnimator();
         this.setTooltip();
         this.setLabel();
      }
      
      private function setTooltip() : void
      {
         if(this._region == null)
         {
            return;
         }
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            this._region.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            this._region.toolTipCaption = "${toolbar.icon.tooltip." + this.var_1240.toLowerCase() + "}";
         }
         this._region.toolTipDelay = 100;
      }
      
      private function setLabel() : void
      {
         var _loc1_:StateItem = this.getCurrentStateObject();
         if(_loc1_ != null && _loc1_.label != null)
         {
            this.var_305.caption = "${toolbar.icon.label." + _loc1_.label + "}";
         }
         else
         {
            this.var_305.caption = "${toolbar.icon.label." + this.var_1240.toLowerCase() + "}";
         }
         this.updateRegion();
      }
      
      public function get window() : IWindow
      {
         return this._region;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1003;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return this.var_2149;
      }
      
      public function get windowMargin() : Number
      {
         return this.var_2150 + this.var_456.windowMargin;
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(this.var_558 != null && this._icon != null)
         {
            this.var_558.update(this._icon);
            if(this.var_558.hasNextState())
            {
               this.state = this.var_558.nextState;
            }
         }
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(this.var_1001 != null && this._icon != null)
         {
            this.var_1001.update();
            this._icon.y = this.var_1001.location;
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!this.var_1003)
         {
            return;
         }
         var _loc3_:StateItem = this.getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(this.var_264)
               {
                  this.var_264.repositionWindow(this.var_660,true);
               }
               if(this._events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_38);
                  _loc4_.iconId = this.var_660;
                  _loc4_.iconName = this.var_1240;
                  this._events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(this.var_1000.length > 0)
               {
                  if(_loc3_.hasStateOver)
                  {
                     this.state = _loc3_.stateOver;
                  }
                  else
                  {
                     this.state = this.var_1242;
                  }
               }
               break;
            case WindowMouseEvent.const_25:
               if(this.var_1000.length > 0)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     this.state = _loc3_.defaultState;
                  }
                  else
                  {
                     this.state = this.var_1002;
                  }
               }
         }
      }
      
      private function updateRegion() : void
      {
         if(this._region == null || this._icon == null)
         {
            return;
         }
         this.var_305.y = this._icon.height;
         this._region.width = Math.max(this._icon.width,this.var_305.width);
         this._region.height = this._icon.height + this.var_305.height;
         this._icon.x = (this._region.width - this._icon.width) / 2;
         this.var_305.x = (this._region.width - this.var_305.width) / 2;
         var _loc1_:Boolean = this.var_456.orientation == "LEFT" || this.var_456.orientation == "RIGHT";
         if(_loc1_)
         {
            this._x = (this.var_456.toolbarUsableWidth - this._region.width) / 2;
            this.var_171 = this.var_1092 + (this.var_456.iconSize - this._region.height) / 2;
         }
         else
         {
            this._x = this.var_1092 + (this.var_456.iconSize - this._region.width) / 2;
            this.var_171 = (this.var_456.toolbarUsableWidth - this._region.height) / 2;
         }
         this._region.x = this._x;
         this._region.y = this.var_171;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         this.updateRegion();
      }
   }
}
