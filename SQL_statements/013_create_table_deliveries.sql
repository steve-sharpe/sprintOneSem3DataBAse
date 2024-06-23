CREATE TABLE public.deliveries
(
    delivery_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    sales_id integer NOT NULL,
    delivery_date date NOT NULL,
    total_pieces numeric NOT NULL,
    PRIMARY KEY (delivery_id)
);

ALTER TABLE IF EXISTS public.deliveries
    OWNER to postgres;

