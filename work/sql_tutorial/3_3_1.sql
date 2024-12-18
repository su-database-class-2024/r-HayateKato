CREATE TABLE cities2 (
        name     varchar(80) primary key,
        location point
);

CREATE TABLE weather2 (
        city      varchar(80) references cities2(name),
        temp_lo   int,
        temp_hi   int,
        prcp      real,
        date      date
);