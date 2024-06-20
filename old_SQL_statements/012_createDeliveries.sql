CREATE TABLE public."Deliveries"
(
    deliveries_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    sales_id integer NOT NULL,
    delivery_date date NOT NULL,
    total_items_delivered numeric NOT NULL,
    PRIMARY KEY (deliveries_id)
);

ALTER TABLE IF EXISTS public."Deliveries"
    OWNER to postgres;