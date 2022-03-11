import React, { useEffect, useState } from 'react';
import Urbit from '@urbit/http-api';
import moment from "moment";
import Main from './components/Main';

const api = new Urbit('', '', window.desk);
api.ship = window.ship;

const testEntry = {
	'action' : 'add-entry',
	'params' : {
		'title': 'testtitle', 
		'desc':'testdesc', 
		'resids': [],
		'permissions' : [],
		'categories' : [],
		'modified' : 'date',
		'type' : {}
	},
};

const events = [
      {
        start: moment().toDate(),
        end: moment().add(1, "days").toDate(),
        title: "Some title",
      },
    ];

export function App() {

  useEffect(() => {
    async function init() {

			const handle = (param: any) => {console.log('param: ' + param)};
			const onSuccess = () => {console.log('onSuccess')};
			const onError = () => {console.log('onError')};

      /* const sub = await api.subscribe({app: 'org', path:'/updates', err: handle, event:handle, quit:handle}); */
			/* const add = await api.poke({onSuccess, onError, app: 'org', mark:'org-action', json: testEntry}); */
    }

    init();
  }, []);
// middle is a calendar, side is a todo app
  return (
	<main>
	<Main/>
	</main>
  );
}
