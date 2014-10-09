class CreatePovertyIndicators < ActiveRecord::Migration
  def change
    create_table :poverty_indicators do |t|
      t.integer :ent
      t.string :nom_ent
      t.integer :clave_mun
      t.string :nom_mun
      t.decimal :pobtot_ajustada, precision: 10
      t.decimal :pobreza, precision: 10, scale: 9
      t.decimal :pobreza_e, precision: 10, scale: 9
      t.decimal :pobreza_m, precision: 10, scale: 9
      t.decimal :vul_car, precision: 10, scale: 9
      t.decimal :vul_ing, precision: 10, scale: 9
      t.decimal :npnv, precision: 10, scale: 9
      t.decimal :ic_rezedu, precision: 10, scale: 9
      t.decimal :ic_asalud, precision: 10, scale: 9
      t.decimal :ic_segsoc, precision: 10, scale: 9
      t.decimal :ic_cv, precision: 10, scale: 9
      t.decimal :ic_sbv, precision: 10, scale: 9
      t.decimal :ic_ali, precision: 10, scale: 9
      t.decimal :carencias, precision: 10, scale: 9
      t.decimal :carencias3, precision: 10, scale: 9
      t.decimal :plb, precision: 10, scale: 9
      t.decimal :plb_m, precision: 10, scale: 9
      t.integer :rankin_p
      t.integer :rankin_pe
      t.decimal :N_pobreza, precision: 10
      t.decimal :N_pobreza_e, precision: 10
      t.decimal :N_pobreza_m, precision: 10
      t.decimal :N_vul_car, precision: 10
      t.decimal :N_vul_ing, precision: 10
      t.decimal :N_npnv, precision: 10
      t.decimal :N_ic_rezedu, precision: 10
      t.decimal :N_ic_asalud, precision: 10
      t.decimal :N_ic_segsoc, precision: 10
      t.decimal :N_ic_cv, precision: 10
      t.decimal :N_ic_sbv, precision: 10
      t.decimal :N_ic_ali, precision: 10
      t.decimal :N_carencias, precision: 10
      t.decimal :N_carencias3, precision: 10
      t.decimal :N_plb, precision: 10
      t.decimal :N_plb_m, precision: 10
      t.integer :perrankin_p
      t.integer :perrankin_pe
      t.decimal :cppobreza, precision: 10, scale: 9
      t.decimal :cppobreza_e, precision: 10, scale: 9
      t.decimal :cppobreza_m, precision: 10, scale: 9
      t.decimal :cpvul_car, precision: 10, scale: 9
      t.decimal :cpic_rezedu, precision: 10, scale: 9
      t.decimal :cpic_asalud, precision: 10, scale: 9
      t.decimal :cpic_segsoc, precision: 10, scale: 9
      t.decimal :cpic_cv, precision: 10, scale: 9
      t.decimal :cpic_sbv, precision: 10, scale: 9
      t.decimal :cpic_ali, precision: 10, scale: 9
      t.decimal :cpcarencias, precision: 10, scale: 9
      t.decimal :cpcarencias3, precision: 10, scale: 9
      t.decimal :cpplb, precision: 10, scale: 9
      t.decimal :cpplbm, precision: 10, scale: 9
      t.decimal :pobtot_00, precision: 10
      t.decimal :pobtot_05, precision: 10
      t.decimal :pobtot_10, precision: 10
      t.decimal :porc_pob_15_analfa00, precision: 10, scale: 7
      t.decimal :porc_pob_15_analfa05, precision: 10, scale: 7
      t.decimal :porc_pob_15_analfa10, precision: 10, scale: 7
      t.decimal :porc_pob614_noasiste00, precision: 10, scale: 7
      t.decimal :porc_pob614_noasiste05, precision: 10, scale: 7
      t.decimal :porc_pob614_noasiste10, precision: 10, scale: 7
      t.decimal :porc_pob15_basicainc00, precision: 10, scale: 7
      t.decimal :porc_pob15_basicainc05, precision: 10, scale: 7
      t.decimal :porc_pob15_basicainc10, precision: 10, scale: 7
      t.decimal :porc_pob_snservsal00, precision: 10, scale: 7
      t.decimal :porc_pob_snservsal05, precision: 10, scale: 7
      t.decimal :porc_pob_snservsal10, precision: 10, scale: 7
      t.decimal :porc_vivpisotierra00, precision: 10, scale: 7
      t.decimal :porc_vivpisotierra05, precision: 10, scale: 7
      t.decimal :porc_vivpisotierra10, precision: 10, scale: 7
      t.decimal :porc_vivsnsan00, precision: 10, scale: 7
      t.decimal :porc_vivsnsan05, precision: 10, scale: 7
      t.decimal :porc_vivsnsan10, precision: 10, scale: 7
      t.decimal :porc_snaguaent00, precision: 10, scale: 7
      t.decimal :porc_snaguaent05, precision: 10, scale: 7
      t.decimal :porc_snaguaent10, precision: 10, scale: 7
      t.decimal :porc_vivsndren00, precision: 10, scale: 7
      t.decimal :porc_vivsndren05, precision: 10, scale: 7
      t.decimal :porc_vivsndren10, precision: 10, scale: 7
      t.decimal :porc_vivsnenergia00, precision: 10, scale: 7
      t.decimal :porc_vivsnenergia05, precision: 10, scale: 7
      t.decimal :porc_vivsnenergia10, precision: 10, scale: 7
      t.decimal :porc_vivsnlavadora00, precision: 10, scale: 7
      t.decimal :porc_vivsnlavadora05, precision: 10, scale: 7
      t.decimal :porc_vivsnlavadora10, precision: 10, scale: 7
      t.decimal :porc_vivsnrefri00, precision: 10, scale: 7
      t.decimal :porc_vivsnrefri05, precision: 10, scale: 7
      t.decimal :porc_vivsnrefr10, precision: 10, scale: 7
      t.decimal :irez_soc00, precision: 10, scale: 9
      t.decimal :irez_soc05, precision: 10, scale: 9
      t.decimal :irez_soc10, precision: 10, scale: 9
      t.integer :gdo_rezsoc00
      t.integer :gdo_rezsoc05
      t.integer :gdo_rezsoc10
      t.integer :l_ocupnac00
      t.integer :l_ocupnac05
      t.integer :l_ocupnac10
      t.decimal :p_rez_edu_90, precision: 10, scale: 7
      t.decimal :p_rez_edu_00, precision: 10, scale: 7
      t.decimal :p_rez_edu_10, precision: 10, scale: 7
      t.decimal :p_ser_sal_00, precision: 10, scale: 7
      t.decimal :p_ser_sal_10, precision: 10, scale: 7
      t.decimal :p_viv_pisos_90, precision: 10, scale: 7
      t.decimal :p_viv_pisos_00, precision: 10, scale: 7
      t.decimal :p_viv_pisos_10, precision: 10, scale: 7
      t.decimal :p_viv_muros_90, precision: 10, scale: 7
      t.decimal :p_viv_muros_00, precision: 10, scale: 7
      t.decimal :p_viv_muros_10, precision: 10, scale: 7
      t.decimal :p_viv_techos_90, precision: 10, scale: 7
      t.decimal :p_viv_techos_00, precision: 10, scale: 7
      t.decimal :p_viv_techos_10, precision: 10, scale: 7
      t.decimal :p_viv_hacin_90, precision: 10, scale: 7
      t.decimal :p_viv_hacin_00, precision: 10, scale: 7
      t.decimal :p_viv_hacin_10, precision: 10, scale: 7
      t.decimal :p_viv_agu_entub_90, precision: 10, scale: 7
      t.decimal :p_viv_agu_entub_00, precision: 10, scale: 7
      t.decimal :p_viv_agu_entub_10, precision: 10, scale: 7
      t.decimal :p_viv_dren_90, precision: 10, scale: 7
      t.decimal :p_viv_dren_00, precision: 10, scale: 7
      t.decimal :p_viv_dren_000, precision: 10, scale: 7
      t.decimal :p_viv_elect_90, precision: 10, scale: 7
      t.decimal :p_viv_elect_00, precision: 10, scale: 7
      t.decimal :p_viv_elect_10, precision: 10, scale: 7
      t.decimal :pobreza_alim_90, precision: 10, scale: 7
      t.decimal :pobreza_alim_00, precision: 10, scale: 7
      t.decimal :pobreza_alim_10, precision: 10, scale: 7
      t.decimal :pobreza_cap_90, precision: 10, scale: 7
      t.decimal :pobreza_cap_00, precision: 10, scale: 7
      t.decimal :pobreza_cap_10, precision: 10, scale: 7
      t.decimal :pobreza_patrim_90, precision: 10, scale: 7
      t.decimal :pobreza_patrim_00, precision: 10, scale: 7
      t.decimal :pobreza_patrim_10, precision: 10, scale: 7
      t.decimal :gini_90, precision: 10, scale: 9
      t.decimal :gini_00, precision: 10, scale: 9
      t.decimal :gini_10, precision: 10, scale: 9
    end
  end
end
