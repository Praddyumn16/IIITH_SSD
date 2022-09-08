DELIMITER //  

CREATE PROCEDURE customerDetail()  
BEGIN  
	DECLARE c_grade decimal;  
	DECLARE c_name, c_city, c_country VARCHAR(20);  
        DECLARE finished INT DEFAULT 0;
    
	DECLARE Curr 
		CURSOR FOR 
		      SELECT CUST_NAME, WORKING_AREA, CUST_COUNTRY, GRADE FROM customer WHERE AGENT_CODE LIKE "A00%";  
	
    DECLARE CONTINUE HANDLER 
    FOR NOT FOUND SET finished = 1; 
	
    open Curr;
	getCurr: LOOP  
		FETCH Curr INTO c_name, c_city, c_country, c_grade;
		SELECT c_name, c_city, c_country, c_grade;
		IF finished = 1 THEN
			LEAVE getCurr; 
		END IF;
	END LOOP getCurr;  
	CLOSE Curr;
    
END  // 
DELIMITER ;

CALL customerDetail();

