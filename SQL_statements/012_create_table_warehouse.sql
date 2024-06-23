CREATE TABLE public.warehouse
(
    warehouse_id integer NOT NULL,
    warehouse_name character varying(4) NOT NULL,
    warehouse_city character varying(25) NOT NULL,
    sq_ft_capacity numeric NOT NULL,
    PRIMARY KEY (warehouse_id)
);

ALTER TABLE IF EXISTS public.warehouse
    OWNER to postgres;