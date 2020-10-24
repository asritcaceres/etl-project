from flask import Flask, jsonify
import pandas as pd
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
from sql_keys import username, password
import numpy as np

engine = create_engine(f'postgresql://{username}:{password}@localhost:5432/ETL-Project')

Base = automap_base()

Base.prepare(engine, reflect=True)
data = Base.classes.Candy_data
hierarchy = Base.classes.Candy_hierarchy
merge = Base.classes.Candy_merge

session=Session(engine)

app = Flask (__name__)

@app.route("/")
def welcome():
    return (
        f"Welcome to Our Candy Observations!<br>"
        f"Available Routes: <br/>"
        f"/top_candy <br/>"
        f"/candy_hierarchy<br/>"

    )

@app.route("/top_candy")
def information():
    
    results = session.query(merge.CandyName, merge.winpercent, merge.Percent_Joy).\
    filter(merge.winpercent >= "50").\
    order_by(merge.winpercent.desc()).all()
    session.close()

    all_names = list(np.ravel(results))
    return jsonify(all_names)



@app.route("/candy_hierarchy")
def info():
    
    results_2 = session.query(hierarchy.CandyName, hierarchy.Percent_Joy).\
    filter(hierarchy.Percent_Joy >= ".50").\
    order_by(hierarchy.Percent_Joy.desc()).all()
    session.close()

    all_names_2 = list(np.ravel(results_2))
    return jsonify(all_names_2)

if __name__ == "__main__":
    app.run(debug=True)