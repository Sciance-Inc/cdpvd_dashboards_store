{#
CDPVD Dashboards store
Copyright (C) 2024 CDPVD.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
#}
select
    matr,
    no_seq,
    code_pmnt,
    corp_empl,
    lieu_trav,
    mode,
    mode as mode_paiement,
    nb_unit,
    mnt_unit,
    nb_heur_cont,
    nb_heur_auto,
    nb_heur_piec,
    no_type_pmnt,
    ref_empl,
    no_cheq,
    cast(date_cheq as date) as date_cheq,
    cast(date_deb as date) as date_deb,
    cast(date_fin as date) as date_fin,
    code_prov,
    code_prov as code_provenance,
    mnt,
    mnt_cour_trait_diff,
    no_cmpt_cour_trait_diff
from {{ var("database_paie") }}.dbo.pai_hchq_pmnt
with (nolock)
