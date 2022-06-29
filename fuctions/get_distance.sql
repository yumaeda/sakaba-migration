DELIMITER //

CREATE FUNCTION GetDistance(lat1 DOUBLE, lon1 DOUBLE, lat2 DOUBLE, lon2 DOUBLE) RETURNS DOUBLE
BEGIN
    DECLARE latDiff DOUBLE;
    DECLARE lonDiff DOUBLE;
    DECLARE lhsLatitude DOUBLE;
    DECLARE rhsLatitude DOUBLE;
    DECLARE squareHalfChordLength DOUBLE;
    DECLARE angularDistance DOUBLE;

    SET latDiff = (lat2 - lat1) * PI() / 180;
    SET lonDiff = (lon2 - lon1) * PI() / 180;
    SET lhsLatitude = lat1 * PI() / 180;
    SET rhsLatitude = lat2 * PI() / 180;
    SET squareHalfChordLength = SIN(latDiff/2) * SIN(latDiff/2) + SIN(lonDiff/2) * SIN(lonDiff/2) * COS(lat1) * COS(lat2);
    SET angularDistance = 2 * ATAN2(SQRT(squareHalfChordLength), SQRT(1 - squareHalfChordLength));

    RETURN 6371.009 * angularDistance;
END;


//

DELIMITER ;
