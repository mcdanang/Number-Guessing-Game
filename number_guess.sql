--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    games_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.games_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games games_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN games_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 1);
INSERT INTO public.games VALUES (2, 1, 5);
INSERT INTO public.games VALUES (3, 1, 6);
INSERT INTO public.games VALUES (4, 10, 932);
INSERT INTO public.games VALUES (5, 10, 940);
INSERT INTO public.games VALUES (6, 11, 464);
INSERT INTO public.games VALUES (7, 11, 647);
INSERT INTO public.games VALUES (8, 10, 87);
INSERT INTO public.games VALUES (9, 10, 356);
INSERT INTO public.games VALUES (10, 10, 713);
INSERT INTO public.games VALUES (11, 1, 4);
INSERT INTO public.games VALUES (12, 12, 796);
INSERT INTO public.games VALUES (13, 12, 54);
INSERT INTO public.games VALUES (14, 13, 917);
INSERT INTO public.games VALUES (15, 13, 486);
INSERT INTO public.games VALUES (16, 12, 266);
INSERT INTO public.games VALUES (17, 12, 961);
INSERT INTO public.games VALUES (18, 12, 839);
INSERT INTO public.games VALUES (19, 14, 6);
INSERT INTO public.games VALUES (20, 15, 3);
INSERT INTO public.games VALUES (21, 1, 2);
INSERT INTO public.games VALUES (22, 15, 5);
INSERT INTO public.games VALUES (23, 16, 573);
INSERT INTO public.games VALUES (24, 16, 391);
INSERT INTO public.games VALUES (25, 17, 582);
INSERT INTO public.games VALUES (26, 17, 981);
INSERT INTO public.games VALUES (27, 16, 715);
INSERT INTO public.games VALUES (28, 16, 217);
INSERT INTO public.games VALUES (29, 16, 399);
INSERT INTO public.games VALUES (30, 18, 957);
INSERT INTO public.games VALUES (31, 18, 405);
INSERT INTO public.games VALUES (32, 19, 288);
INSERT INTO public.games VALUES (33, 19, 972);
INSERT INTO public.games VALUES (34, 18, 703);
INSERT INTO public.games VALUES (35, 18, 748);
INSERT INTO public.games VALUES (36, 18, 881);
INSERT INTO public.games VALUES (37, 20, 973);
INSERT INTO public.games VALUES (38, 20, 4);
INSERT INTO public.games VALUES (39, 21, 494);
INSERT INTO public.games VALUES (40, 21, 147);
INSERT INTO public.games VALUES (41, 20, 31);
INSERT INTO public.games VALUES (42, 20, 834);
INSERT INTO public.games VALUES (43, 20, 577);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'mcdanang');
INSERT INTO public.users VALUES (2, 'user_1663645191732');
INSERT INTO public.users VALUES (3, 'user_1663645191731');
INSERT INTO public.users VALUES (4, 'user_1663645714554');
INSERT INTO public.users VALUES (5, 'user_1663645714553');
INSERT INTO public.users VALUES (6, 'user_1663646002126');
INSERT INTO public.users VALUES (7, 'user_1663646002125');
INSERT INTO public.users VALUES (8, 'user_1663647019624');
INSERT INTO public.users VALUES (9, 'user_1663647019623');
INSERT INTO public.users VALUES (10, 'user_1663648129488');
INSERT INTO public.users VALUES (11, 'user_1663648129487');
INSERT INTO public.users VALUES (12, 'user_1663648222065');
INSERT INTO public.users VALUES (13, 'user_1663648222064');
INSERT INTO public.users VALUES (14, 'Mmcdanang');
INSERT INTO public.users VALUES (15, 'Mcdanang');
INSERT INTO public.users VALUES (16, 'user_1663648669509');
INSERT INTO public.users VALUES (17, 'user_1663648669508');
INSERT INTO public.users VALUES (18, 'user_1663648693678');
INSERT INTO public.users VALUES (19, 'user_1663648693677');
INSERT INTO public.users VALUES (20, 'user_1663648763384');
INSERT INTO public.users VALUES (21, 'user_1663648763383');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 43, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (games_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

