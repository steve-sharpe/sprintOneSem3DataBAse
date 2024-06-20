CREATE TABLE public."Reward-Points"
(
    reward_points_id integer NOT NULL,
    contact_id integer NOT NULL,
    points_earned numeric NOT NULL DEFAULT 0,
    points_redeemed numeric NOT NULL DEFAULT 0,
    points_total numeric NOT NULL,
    PRIMARY KEY (reward_points_id)
);

ALTER TABLE IF EXISTS public."Reward-Points"
    OWNER to postgres;