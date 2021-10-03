package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_346:int = 1;
      
      public static const const_256:int = 2;
      
      public static const const_271:int = 3;
      
      public static const const_336:int = 4;
      
      public static const const_221:int = 5;
      
      public static const const_345:int = 1;
      
      public static const const_764:int = 2;
      
      public static const const_751:int = 3;
      
      public static const const_774:int = 4;
      
      public static const const_228:int = 5;
      
      public static const const_675:int = 6;
      
      public static const const_765:int = 7;
      
      public static const const_253:int = 8;
      
      public static const const_334:int = 9;
      
      public static const const_1604:int = 10;
      
      public static const const_671:int = 11;
      
      public static const const_490:int = 12;
       
      
      private var var_359:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_359 = new Array();
         this.var_359.push(new Tab(this._navigator,const_346,const_490,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_520));
         this.var_359.push(new Tab(this._navigator,const_256,const_345,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_520));
         this.var_359.push(new Tab(this._navigator,const_336,const_671,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_957));
         this.var_359.push(new Tab(this._navigator,const_271,const_228,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_520));
         this.var_359.push(new Tab(this._navigator,const_221,const_253,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_731));
         this.setSelectedTab(const_346);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_336;
      }
      
      public function get tabs() : Array
      {
         return this.var_359;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_359)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_359)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_359)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
