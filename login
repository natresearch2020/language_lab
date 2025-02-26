import React from 'react';
import { useState } from 'react';
import { Card, CardContent } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { Button } from '@/components/ui/button';
import { motion } from 'framer-motion';

export default function LandingPage() {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');

  const handleLogin = (e) => {
    e.preventDefault();
    console.log('Username:', username);
    console.log('Password:', password);
  };

  return (
    <div className="min-h-screen bg-gradient-to-r from-blue-500 to-purple-600 flex items-center justify-center">
      <Card className="w-full max-w-md p-8 shadow-2xl rounded-2xl">
        <CardContent>
          <motion.h1 
            className="text-3xl font-bold text-center text-white mb-6"
            initial={{ opacity: 0, y: -50 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5 }}
          >
            Learn Languages Easily
          </motion.h1>
          <form onSubmit={handleLogin} className="space-y-4">
            <Input 
              type="text" 
              placeholder="Username" 
              value={username} 
              onChange={(e) => setUsername(e.target.value)} 
              className="w-full p-2 rounded-lg"
            />
            <Input 
              type="password" 
              placeholder="Password" 
              value={password} 
              onChange={(e) => setPassword(e.target.value)} 
              className="w-full p-2 rounded-lg"
            />
            <Button type="submit" className="w-full bg-indigo-600 hover:bg-indigo-800 text-white py-2 rounded-xl">
              Login
            </Button>
          </form>
        </CardContent>
      </Card>
    </div>
  );
}
