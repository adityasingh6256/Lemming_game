module lemming(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output reg walk_left,
    output reg walk_right,
    output reg aaah,
    output reg digging ); 
   integer count;
    parameter left_walking_state=3'b0,right_walking_state=3'd1,right_digging_state=3'd2,left_digging_state=3'd3,right_falling_state=3'd4,left_falling_state=3'd5,dead_state=3'd6;
    reg [2:0] ps,ns;
    
    always@(posedge clk,posedge areset)
        begin
       if(areset) begin
            count<=32'd0;ps<=left_walking_state;end
            else if((ps==left_falling_state)||(ps==right_falling_state)) begin count<=count+32'd1; ps<=ns;end
        
            else begin count<=32'd0; ps<=ns;end
    end
    always@(*)
        begin
            case(ps)
                3'd0:begin 
                    if(bump_left&&ground&&(dig==0))
                    ns<=right_walking_state;
                else if((bump_left==0)&&ground&&(dig==0))
                    ns<=left_walking_state;
                else if(dig&&ground)
                    ns<=left_digging_state;
                else if(ground==0)
                    ns<=left_falling_state;
                    else ns<=left_walking_state;
                end
                3'd1:begin 
                    if(bump_right&&ground&&(dig==0))
                    ns<=left_walking_state;
                    else if((bump_right==0)&&ground&&(dig==0))
                    ns<=right_walking_state;
                else if(dig&&(ground))
                    ns<=right_digging_state;
                else if(ground==0)
                    ns<=right_falling_state;
                    else ns<=right_walking_state;
                end
                3'd2:begin 
                if(ground==0)
                    ns<=right_falling_state;
                else
                    ns<=right_digging_state;
                end
                3'd3:begin 
                if(ground==0)
                    ns<=left_falling_state;
                else
                    ns<=left_digging_state;
                end
                  3'd4:begin 
                      if(ground==0) begin
                          ns<=right_falling_state; end
                        ////  count<=count+32'd1;end multiple driver of count
              else if(ground==1)
                             begin
                          if(count>32'd19)
                         ns<=dead_state;
                          else if(count<=32'd19)
                          ns<=right_walking_state;
                      end  //    count<=0;end 
                    
                          
                      
                end
                3'd5:begin 
                    if(ground==0) begin
                    ns<=left_falling_state;
                    end  // count<=count+32'd1;end
                    else if(ground==1)
                             begin
                          if(count>32'd19)
                         ns<=dead_state;
                          else if(count<=32'd19)
                          ns<=left_walking_state;
                      end             ////     count<=0;
                    end
                
                3'd6: ns<=dead_state;
               default:ns<=left_walking_state;
            endcase
                end
                
                always@(ps)
                    begin
                        
                    case(ps)
                    left_walking_state:begin walk_left=1;walk_right=0;aaah=0;digging=0;end
                right_walking_state:begin walk_left=0;walk_right=1;aaah=0;digging=0;end
                 right_digging_state:begin walk_left=0;walk_right=0;aaah=0;digging=1;end
                 left_digging_state:begin walk_left=0;walk_right=0;aaah=0;digging=1;end
                         right_falling_state:begin walk_left=0;walk_right=0;aaah=1;digging=0;end
                         left_falling_state:begin walk_left=0;walk_right=0;aaah=1;digging=0;end
                         dead_state:begin walk_left=0;walk_right=0;aaah=0;digging=0;end
                        default:begin walk_left=1;walk_right=0;aaah=0;digging=0;end
                    endcase
                        end
                
                    
                    
endmodule