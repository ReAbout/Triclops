delimiter //

CREATE PROCEDURE pro_findusers(vid int, isowner int, uid int,gender int, isVerified int, fuzzy int, nickname VARCHAR(50),firstRcord int, pageSize int, orderByProperty VARCHAR(15), ascOrDesc VARCHAR(5))
BEGIN
    DROP table IF EXISTS the_users;
    CREATE TEMPORARY TABLE the_users SELECT * FROM t_user WHERE 1=2;
			INSERT INTO the_users SELECT DISTINCT U.* FROM t_user U LEFT JOIN t_organization_user OU ON u.Id =  OU.uid WHERE OU.oid in
             (SELECT O.Id FROM t_organization O
                 LEFT JOIN t_authoritygroup AG ON O.Id = AG.oid
                 LEFT JOIN t_authoritygroup_relatived AGR ON AG.id = AGR.ag_id 
                 LEFT JOIN t_authoritygroup_user AGU ON AGR.ag_id = AGU.ag_id WHERE AGR.a_id = 0 AND AGU.u_id = uid);
            SET @vid = vid;
            SET @isowner = isowner;
            SET @gender = gender;
            SET @isVerified = isVerified;
            SET @nickname = nickname;
            SET @firstRcord = firstRcord;
            SET @pageSize = pageSize;
            SET @orderByProperty = orderByProperty;
            SET @ascOrDesc = ascOrDesc;
            SET @sql = "SELECT u.* FROM the_users u";
            SET @sql = CONCAT(@sql, " LEFT JOIN t_user_vehicle_relatived uvr ON u.id = uvr.userid WHERE (@vid = 0 OR uvr.vid = ?) AND (@isowner = -1 OR uvr.iflag = ?)");
            SET @sql = CONCAT(@sql, " AND (@gender = -1 OR u.gender = ?)");
            SET @sql = CONCAT(@sql, " AND (@isVerified = -1 OR u.is_verified = ?)");
            IF FUZZY = 1 THEN     
                 SET @sql = CONCAT(@sql, " AND (@nickname is null OR u.nick like ?)");
            ELSE             
                 SET @sql = CONCAT(@sql, " AND (@nickname is null OR u.nick = ?)");
            END IF;

            SET @sql = CONCAT(@sql, " ORDER BY u.",@orderByProperty," ",@ascOrDesc);
             IF @firstRcord != -1 AND @pageSize != -1 THEN            
                SET @sql = CONCAT(@sql, " limit ", @firstRcord, "," ,@pageSize);
            END IF;
            PREPARE sqlstr from @sql;
            EXECUTE sqlstr using @vid,@isowner,@gender,@isVerified,@nickname;
   		    DROP TABLE the_users;
END//

delimiter ;