CREATE TABLE public."order"
(
    order_id integer NOT NULL,
    sales_id integer NOT NULL,
    contact_id integer NOT NULL,
    order_date date NOT NULL,
    total_order_value money NOT NULL,
    PRIMARY KEY (order_id)
);

ALTER TABLE IF EXISTS public."order"
    OWNER to postgres;