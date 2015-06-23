package org.bigbluebutton.modules.polling.service
{
  import org.bigbluebutton.modules.polling.vo.CreatePollVO;
  import org.bigbluebutton.modules.polling.vo.PollResponseVO;
  import org.bigbluebutton.modules.polling.vo.UpdatePollVO;
  
  /**
  * Used to send receive data from the server.
  */
  public class NetworkPollDataService implements IPollDataService
  {
    private static const LOG:String = "Poll::NetworkPollDataService - ";
    
    /* Injected by Mate */
    public var receiver:MessageReceiver;
    public var sender:MessageSender;
          
    public function startPoll(pollId:String, pollType: String):void
    {
      sender.startPoll(pollId, pollType);
    }
    
    public function stopPoll(pollID:String):void
    {
      sender.stopPoll(pollID);
    }
    
    public function votePoll(pollId:String, answerId:Number):void
    {
      sender.votePoll(pollId, answerId);
    }
    
    public function showPollResult(pollId:String, show:Boolean):void
    {
      sender.showPollResult(pollId, show);
    }
  }
}