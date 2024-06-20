CREATE TABLE public."Warehouse"
(
    warehouse_id integer NOT NULL,
    warehouse_name character varying(25) NOT NULL,
    warehouse_city character varying(30) NOT NULL,
    sq_ft_capacity numeric NOT NULL,
    PRIMARY KEY (warehouse_id)
);

ALTER TABLE IF EXISTS public."Warehouse"
    OWNER to postgres;