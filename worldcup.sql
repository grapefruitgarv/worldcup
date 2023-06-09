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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (52, 2018, 'Final', 142, 143, 4, 2);
INSERT INTO public.games VALUES (53, 2018, 'Third Place', 144, 145, 2, 0);
INSERT INTO public.games VALUES (54, 2018, 'Semi-Final', 143, 145, 2, 1);
INSERT INTO public.games VALUES (55, 2018, 'Semi-Final', 142, 144, 1, 0);
INSERT INTO public.games VALUES (56, 2018, 'Quarter-Final', 143, 146, 3, 2);
INSERT INTO public.games VALUES (57, 2018, 'Quarter-Final', 145, 147, 2, 0);
INSERT INTO public.games VALUES (58, 2018, 'Quarter-Final', 144, 148, 2, 1);
INSERT INTO public.games VALUES (59, 2018, 'Quarter-Final', 142, 149, 2, 0);
INSERT INTO public.games VALUES (60, 2018, 'Eighth-Final', 145, 150, 2, 1);
INSERT INTO public.games VALUES (61, 2018, 'Eighth-Final', 147, 151, 1, 0);
INSERT INTO public.games VALUES (62, 2018, 'Eighth-Final', 144, 152, 3, 2);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 148, 153, 2, 0);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 143, 154, 2, 1);
INSERT INTO public.games VALUES (65, 2018, 'Eighth-Final', 146, 155, 2, 1);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 149, 156, 2, 1);
INSERT INTO public.games VALUES (67, 2018, 'Eighth-Final', 142, 157, 4, 3);
INSERT INTO public.games VALUES (68, 2014, 'Final', 158, 157, 1, 0);
INSERT INTO public.games VALUES (69, 2014, 'Third Place', 159, 148, 3, 0);
INSERT INTO public.games VALUES (70, 2014, 'Semi-Final', 157, 159, 1, 0);
INSERT INTO public.games VALUES (71, 2014, 'Semi-Final', 158, 148, 7, 1);
INSERT INTO public.games VALUES (72, 2014, 'Quarter-Final', 159, 160, 1, 0);
INSERT INTO public.games VALUES (73, 2014, 'Quarter-Final', 157, 144, 1, 0);
INSERT INTO public.games VALUES (74, 2014, 'Quarter-Final', 148, 150, 2, 1);
INSERT INTO public.games VALUES (75, 2014, 'Quarter-Final', 158, 142, 1, 0);
INSERT INTO public.games VALUES (76, 2014, 'Eighth-Final', 148, 161, 2, 1);
INSERT INTO public.games VALUES (77, 2014, 'Eighth-Final', 150, 149, 2, 0);
INSERT INTO public.games VALUES (78, 2014, 'Eighth-Final', 142, 162, 2, 0);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 158, 163, 2, 1);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 159, 153, 2, 1);
INSERT INTO public.games VALUES (81, 2014, 'Eighth-Final', 160, 164, 2, 1);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 157, 151, 1, 0);
INSERT INTO public.games VALUES (83, 2014, 'Eighth-Final', 144, 165, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (142, 'France');
INSERT INTO public.teams VALUES (143, 'Croatia');
INSERT INTO public.teams VALUES (144, 'Belgium');
INSERT INTO public.teams VALUES (145, 'England');
INSERT INTO public.teams VALUES (146, 'Russia');
INSERT INTO public.teams VALUES (147, 'Sweden');
INSERT INTO public.teams VALUES (148, 'Brazil');
INSERT INTO public.teams VALUES (149, 'Uruguay');
INSERT INTO public.teams VALUES (150, 'Colombia');
INSERT INTO public.teams VALUES (151, 'Switzerland');
INSERT INTO public.teams VALUES (152, 'Japan');
INSERT INTO public.teams VALUES (153, 'Mexico');
INSERT INTO public.teams VALUES (154, 'Denmark');
INSERT INTO public.teams VALUES (155, 'Spain');
INSERT INTO public.teams VALUES (156, 'Portugal');
INSERT INTO public.teams VALUES (157, 'Argentina');
INSERT INTO public.teams VALUES (158, 'Germany');
INSERT INTO public.teams VALUES (159, 'Netherlands');
INSERT INTO public.teams VALUES (160, 'Costa Rica');
INSERT INTO public.teams VALUES (161, 'Chile');
INSERT INTO public.teams VALUES (162, 'Nigeria');
INSERT INTO public.teams VALUES (163, 'Algeria');
INSERT INTO public.teams VALUES (164, 'Greece');
INSERT INTO public.teams VALUES (165, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 83, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 165, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

