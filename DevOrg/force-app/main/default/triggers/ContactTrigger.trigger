trigger ContactTrigger on Contact (after insert,after update,after delete,after undelete) {
    
    if(Trigger.isafter){
        if(Trigger.isInsert){
          ContactTriggerHandler.afterInsert(Trigger.New);  
        }else if(Trigger.isUpdate){
          ContactTriggerHandler.afterUpdate(Trigger.New,Trigger.oldMap);    
        }else if(Trigger.isDelete){
          ContactTriggerHandler.afterDelete(Trigger.oldMap);      
        }else if(trigger.IsUndelete){
          ContactTriggerHandler.afterUnDelete(Trigger.New);        
        }
    } else if(Trigger.isBefore){
        if(Trigger.isInsert){
          ContactTriggerHandler.beforeInsert(Trigger.New) ;    
        } else if(Trigger.isUpdate){
          ContactTriggerHandler.beforeUpdate(Trigger.New,Trigger.oldMap);    
        }else if(Trigger.isDelete){
          ContactTriggerHandler.beforeDelete(Trigger.oldMap);     
        } 
    }
}