package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2623:uint;
      
      private var var_128:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_218:IWindowContext;
      
      private var var_1043:IMouseDraggingService;
      
      private var var_1042:IMouseScalingService;
      
      private var var_1041:IMouseListenerService;
      
      private var var_1044:IFocusManagerService;
      
      private var var_1046:IToolTipAgentService;
      
      private var var_1045:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2623 = 0;
         this.var_128 = param2;
         this.var_218 = param1;
         this.var_1043 = new WindowMouseDragger(param2);
         this.var_1042 = new WindowMouseScaler(param2);
         this.var_1041 = new WindowMouseListener(param2);
         this.var_1044 = new FocusManager(param2);
         this.var_1046 = new WindowToolTipAgent(param2);
         this.var_1045 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1043 != null)
         {
            this.var_1043.dispose();
            this.var_1043 = null;
         }
         if(this.var_1042 != null)
         {
            this.var_1042.dispose();
            this.var_1042 = null;
         }
         if(this.var_1041 != null)
         {
            this.var_1041.dispose();
            this.var_1041 = null;
         }
         if(this.var_1044 != null)
         {
            this.var_1044.dispose();
            this.var_1044 = null;
         }
         if(this.var_1046 != null)
         {
            this.var_1046.dispose();
            this.var_1046 = null;
         }
         if(this.var_1045 != null)
         {
            this.var_1045.dispose();
            this.var_1045 = null;
         }
         this.var_128 = null;
         this.var_218 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1043;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1042;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1041;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1044;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1046;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1045;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
